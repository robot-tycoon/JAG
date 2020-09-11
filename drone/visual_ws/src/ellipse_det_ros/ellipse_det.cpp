// c++
#include <math.h>
#include <string>
#include <vector>
#include <iostream>
#include <pthread.h>
#include <thread>
#include <chrono>
#include <boost/thread/mutex.hpp>
#include <boost/thread/shared_mutex.hpp>

#include <ros/ros.h>  
#include <image_transport/image_transport.h>  
#include <cv_bridge/cv_bridge.h>  
#include <sensor_msgs/image_encodings.h>  
#include <geometry_msgs/Pose.h>
#include <opencv2/imgproc/imgproc.hpp>  
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/ml.hpp>
#include "spire_ellipsedetector.h"

using namespace std;
using namespace cv;
using namespace cv::ml;
using namespace spire;


#define MARKER_SIZE 0.18
//相机内部参数
float fx,fy,x_0,y_0;
//相机畸变系数
float k1,k2,p1,p2,k3;

#define ELLIPSE_DET
#define ELLIPSE_PUB

// circle eg. IM_NAME.jpg 0 is background 1 is circle
std::string imlist_dir = "/home/nvidia/vision_ws/src/ellipse_det_ros/labeled_img_class.txt";  // 进行一个字符串赋值，方便下面调用
// images, include above information
std::string base_path = "/home/nvidia/vision_ws/src/ellipse_det_ros/images_from_camera/";  // 同上

//! Camera related parameters.
int frameWidth_;
int frameHeight_;

std_msgs::Header imageHeader_;
cv::Mat camImageCopy_;

boost::shared_mutex mutexImageCallback_;

bool imageStatus_ = false;
boost::shared_mutex mutexImageStatus_;

EllipseDetector ellipse_detector;

// 图像接收回调函数，接收web_cam的话题，并将图像保存在camImageCopy_中
void cameraCallback(const sensor_msgs::ImageConstPtr& msg)
{
    ROS_DEBUG("[EllipseDetector] USB image received.");

    cv_bridge::CvImagePtr cam_image;

    try {
        cam_image = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        imageHeader_ = msg->header;
    } catch (cv_bridge::Exception& e) {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }

    if (cam_image) {
        {
            boost::unique_lock<boost::shared_mutex> lockImageCallback(mutexImageCallback_);
            camImageCopy_ = cam_image->image.clone();
        }
        {
            boost::unique_lock<boost::shared_mutex> lockImageStatus(mutexImageStatus_);
            imageStatus_ = true;
        }
        frameWidth_ = cam_image->image.size().width;
        frameHeight_ = cam_image->image.size().height;
    }
    return;
}

// 用此函数查看是否收到图像话题
bool getImageStatus(void)
{
    boost::shared_lock<boost::shared_mutex> lock(mutexImageStatus_);
    return imageStatus_;
}

void ellipse_det(cv::Mat& input, cv::Mat& output, std::vector<Ellipse>& ells)
{
    static bool first_im = true;
    if (first_im)
    {
        float   fThScoreScore = 0.7f;   // 0.8
        float   fMinReliability = 0.4f; // Const parameters to discard bad ellipses 0.4
        float   fTaoCenters = 0.04f;    // 0.05     
        int     iThLength = 16;         // 16
        float   fMinOrientedRectSide = 3.0f;
        int     iNs = 16;
        Size    szPreProcessingGaussKernelSize = Size(5, 5);
        double  dPreProcessingGaussSigma = 1.0;
        float   fThPos = 1.0f;
        float   fDistanceToEllipseContour = .1f;

        Size sz = input.size();
        
        float fMaxCenterDistance = sqrt(float(sz.width*sz.width + sz.height*sz.height)) * fTaoCenters;
        // Initialize Detector with selected parameters
        ellipse_detector.SetParameters(szPreProcessingGaussKernelSize,
            dPreProcessingGaussSigma,
            fThPos,
            fMaxCenterDistance,
            iThLength,
            fMinOrientedRectSide,
            fDistanceToEllipseContour,
            fThScoreScore,
            fMinReliability,
            iNs
        );
        first_im = false;
    }
    
    input.copyTo(output);
    ellipse_detector.Detect(input, ells);
    ellipse_detector.DrawDetectedEllipses(output, ells);
}

vector<float> hist_feature(cv::Mat& resized_im)  // 生成直方图，带入形参 Mat resized_im
{
    float feats0[10], feats1[10], feats2[10];    // 创建三个数组，用于承载三个通道的数据
    for (int i = 0; i < 10; i++)  // 全部赋值为0
    {
        feats0[i] = 0; feats1[i] = 0; feats2[i] = 0;
    }
    for (int i = 0; i < resized_im.rows; i++) for (int j = 0; j < resized_im.cols; j++)  // 对形参Mat resized_im图像的每一个像素点都进行遍历
    {
        uchar s = resized_im.ptr<uchar>(i, j)[0];  // 并将每一个像素的通道中的值赋值给SHV
        uchar h = resized_im.ptr<uchar>(i, j)[1];
        uchar v = resized_im.ptr<uchar>(i, j)[2];

        float gird = (256. / 10.);         // 设置一个参数，用于分割各通道。这里之所以除以10,是因为feat0,feat1,feat2数组长度设置为10。
        int ind = (int)((float)s / gird);  // 将feat数组中对应的数值进行++
        feats0[ind] ++;

        ind = (int)((float)h / gird);
        feats1[ind] ++;

        ind = (int)((float)v / gird);
        feats2[ind] ++;
    }

    vector<float> feats(30, 0); float total(0);  // 创建一个vector，长度为30,全部为0;创建一个变量total=0
    for (int i = 0; i < 30; i++)                 // 就是将feat0,feat0，feat2中30个数的值依次赋值给feats，并全部相加赋值给total，为了下一步的归一化做准备。
    {
        if (i < 10)
        {
            feats[i] = feats0[i];
            total += feats[i];
        }
        else if (i < 20)
        {
            feats[i] = feats1[i-10];
            total += feats[i];
        }
        else
        {
            feats[i] = feats2[i-20];
            total += feats[i];
        }
    }

    for (int i = 0; i < 30; i++)  // 进行归一化
    {
        feats[i] /= total;
    }
    return feats;  // 返回feats
}

// 用标注的图像训练SVM分类器
Ptr<SVM> train_svm_classifier()
{
    ifstream ifs(imlist_dir);
    string im_name;
    int label;

    Mat resized_im;
    
    vector<vector<float> > all_feats;
    vector<int> all_labels;

    while (ifs >> im_name >> label)
    {
        cout << im_name << " " << label << endl;
        Mat im_one = imread(base_path + im_name, 1);
        all_labels.push_back(label);

        cv::resize(im_one, resized_im, Size(28, 28));
        cv::cvtColor(resized_im, resized_im, COLOR_BGR2HSV);

        vector<float> feats = hist_feature(resized_im);

        all_feats.push_back(feats);
    }

    Mat trainingDataMat(all_feats.size(), 30, CV_32FC1);
    Mat labelsMat(all_feats.size(), 1, CV_32S);
    for (int i = 0; i < all_feats.size(); i++) {
        for (int t = 0; t < 30; t++) {
            float tmp = all_feats[i][t]; // !!!!!!!!!!!!!!!
            float* pf = trainingDataMat.ptr<float>(i, t);
            *pf = tmp;
        }

        int gt = all_labels[i]; // !!!!!!!!!!!!!!!
        int* pi = labelsMat.ptr<int>(i);
        *pi = gt;
    }

    Ptr<SVM> svm = SVM::create();
    svm->setType(SVM::C_SVC);
    svm->setKernel(SVM::LINEAR);
    svm->setTermCriteria(TermCriteria(TermCriteria::MAX_ITER, 100, 1e-6));
    //! [init]
    //! [train]
    svm->train(trainingDataMat, ROW_SAMPLE, labelsMat);
    // svm->save("trained_svm.xml");

    return svm;
}



//! ROS subscriber and publisher.
image_transport::Subscriber imageSubscriber_;
#ifdef ELLIPSE_PUB
image_transport::Publisher ellipse_pub;
#endif
ros::Publisher pose_pub;
// cv::ml::SVM
Ptr<SVM> svm;

int main(int argc, char **argv)
{ 
    // With Training
    bool wt = false;
    for (int i=0; i<argc; i++)
    {
        if (strcmp("wt", argv[i]) == 0) { wt = true; break; }
    }

    if (wt)
        svm = train_svm_classifier();

    ros::init(argc, argv, "ellipse_det");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh); 
    ros::Rate loop_rate(30);
    
    //读取参数文档camera_param.yaml中的参数值；
    nh.param<float>("fx", fx, 582.611780);
    nh.param<float>("fy", fy, 582.283970);
    nh.param<float>("x0", x_0, 355.598968);
    nh.param<float>("y0", y_0, 259.508932);

    nh.param<float>("k1", k1, -0.401900);
    nh.param<float>("k2", k2, 0.175110);
    nh.param<float>("p1", p1, 0.002115);
    nh.param<float>("p2", p2, -0.003032);
    nh.param<float>("k3", k3, 0.0);
    // 接收图像的话题
    imageSubscriber_ = it.subscribe("/camera/fisheye1/image_raw", 1, cameraCallback);
#ifdef ELLIPSE_PUB
    // 发布椭圆检测结果的话题
    ellipse_pub = it.advertise("/camera/fisheye1/image_ellipse_det", 1);
#endif
    // 椭圆检测结果，xyz
    pose_pub = nh.advertise<geometry_msgs::Pose>("/vision/target", 1);
    
    sensor_msgs::ImagePtr msg_ellipse;

    const auto wait_duration = std::chrono::milliseconds(2000);
    while (ros::ok())
    {
        while (!getImageStatus()) 
        {
            printf("Waiting for image.\n");
            std::this_thread::sleep_for(wait_duration);
            ros::spinOnce();
        }

#ifdef ELLIPSE_DET
        Mat ellipse_show, frame;
        std::vector<Ellipse> ells, ells_copy;
        {
            boost::unique_lock<boost::shared_mutex> lockImageCallback(mutexImageCallback_);
            frame = camImageCopy_.clone();
        }
        ellipse_det(frame, ellipse_show, ells);

        static double last_x(0), last_y(0), last_z(0);
        bool deted = false;

        if (wt)
        {
            // 遍历每个检测到的椭圆
            for (int i=0; i<ells.size(); i++)
            {
                Ellipse e = ells[i];

                int xc = ells[i].xc_;
                int yc = ells[i].yc_;
                int width = (ells[i].a_ + ells[i].b_)*0.65;

                // 提取椭圆中心区域
                Rect output_r(xc - width / 2, yc - width / 2, width, width);
                if (output_r.x < 0 || output_r.y < 0 ||
                    output_r.x + output_r.width >= frame.cols ||
                    output_r.y + output_r.height >= frame.rows)
                    continue;
                Mat center_det = frame(output_r);

                // 提取中心区域的颜色直方图
                cv::resize(center_det, center_det, cv::Size(28,28));
                cv::cvtColor(center_det, center_det, COLOR_BGR2HSV);
                std::vector<float> feat = hist_feature(center_det);

                cv::Mat predictDataMat(1, 30, CV_32F);
                for (int i=0;i<30;i++)
                {
                    predictDataMat.at<float>(i) = feat[i];
                }
                // 利用SVM分类器判断是否是需要的检测结果
                float pred = svm->predict(predictDataMat);

                // 如果是的，则将结果发布出去
                if (pred == 1)
                {
                    deted = true;
                    geometry_msgs::Pose pose_now;
                    float theta_x = atan((e.xc_ - x_0) / fx);  //315.06 calibration
                    float theta_y = atan((e.yc_ - y_0) / fy);  //241.27 calibration 

                    float depth = MARKER_SIZE*fx/e.b_; // shendu

                    float real_x = depth*tan(theta_x);
                    float real_y = depth*tan(theta_y);

                    pose_now.orientation.w = 1;
                    pose_now.position.x = depth;
                    pose_now.position.y = real_x;
                    pose_now.position.z = real_y;
                    pose_pub.publish(pose_now);

                    last_x = depth;
                    last_y = real_x;
                    last_z = real_y;

                    cout << "flag_detected: " <<  pose_now.orientation.w <<endl;
                    cout << "pos_target: [X Y Z] : " << " " << pose_now.position.x  << " [m] "<< pose_now.position.y   <<" [m] "<< pose_now.position.z <<" [m] "<<endl;

                    ells_copy.push_back(e);
                }
            }            
        }
        else if (ells.size() > 0)
        {
            Ellipse e = ells[0];
            deted = true;
            geometry_msgs::Pose pose_now;
            float theta_x = atan((e.xc_ - x_0) / fx);  //315.06 calibration
            float theta_y = atan((e.yc_ - y_0) / fy);  //241.27 calibration 

            float depth = MARKER_SIZE*fx/e.b_; // shendu

            float real_x = depth*tan(theta_x);
            float real_y = depth*tan(theta_y);

            pose_now.orientation.w = 1;
            pose_now.position.x = depth;
            pose_now.position.y = real_x;
            pose_now.position.z = real_y;
            pose_pub.publish(pose_now);

            last_x = depth;
            last_y = real_x;
            last_z = real_y;

            cout << "flag_detected: " <<  pose_now.orientation.w <<endl;
            cout << "pos_target: [X Y Z] : " << " " << pose_now.position.x  << " [m] "<< pose_now.position.y   <<" [m] "<< pose_now.position.z <<" [m] "<<endl;

            ells_copy.push_back(e);
        }
        if (!deted)
        {
            // 如果没检测到，则发布上次的检测结果，并用标志orientation.w = 0告知未检测到
            geometry_msgs::Pose pose_now;
            pose_now.orientation.w = 0;
            pose_now.position.x = last_x;
            pose_now.position.y = last_y;
            pose_now.position.z = last_z;
            pose_pub.publish(pose_now);

            cout << "flag_detected: " <<  pose_now.orientation.w <<endl;
            cout << "pos_target: [X Y Z] : " << " " << pose_now.position.x  << " [m] "<< pose_now.position.y   <<" [m] "<< pose_now.position.z <<" [m] "<<endl;

        }
#ifdef ELLIPSE_PUB
        // 发布椭圆检测的可视化结果，用于测试
        Mat img_copy;
        frame.copyTo(img_copy);
        ellipse_detector.DrawDetectedEllipses(img_copy, ells_copy);
        msg_ellipse = cv_bridge::CvImage(std_msgs::Header(), "bgr8", img_copy).toImageMsg();  
        ellipse_pub.publish(msg_ellipse); 
#endif
#endif


        ros::spinOnce();
        loop_rate.sleep();
    }
}




