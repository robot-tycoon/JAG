/* 单个二维码识别程序
 * 识别的二维码可以利用生成二维码程序完成生成
 * 视野里只允许存在一个二维码 且二维码的字典类型要对应
 * 二维码的边长为0.2m
 * Update Time: 2018.10.15
 */
#include <ros/ros.h>  
#include <image_transport/image_transport.h>  
#include <cv_bridge/cv_bridge.h>  
#include <sensor_msgs/image_encodings.h>  
#include <geometry_msgs/Pose.h>
#include <opencv2/imgproc/imgproc.hpp>  
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include "opencv2/aruco.hpp"
#include "opencv2/aruco/dictionary.hpp"
#include "opencv2/aruco/charuco.hpp"
#include "opencv2/calib3d.hpp"

using namespace std;
using namespace cv;


ros::Publisher pose_pub;
image_transport::Publisher aruco_pub;

//相机内部参数
float fx,fy,x_0,y_0;
//相机畸变系数
float k1,k2,p1,p2,k3;

void CodeRotateByZ(double x, double y, double thetaz, double& outx, double& outy)
  {
    double x1 = x;//将变量拷贝一次，保证&x == &outx这种情况下也能计算正确
    double y1 = y;
    double rz = thetaz * CV_PI / 180;
    outx = cos(rz) * x1 - sin(rz) * y1;
    outy = sin(rz) * x1 + cos(rz) * y1;
  }
void CodeRotateByY(double x, double z, double thetay, double& outx, double& outz)
 {
   double x1 = x;
   double z1 = z;
   double ry = thetay * CV_PI / 180;
   outx = cos(ry) * x1 + sin(ry) * z1;
   outz = cos(ry) * z1 - sin(ry) * x1;
 }
void CodeRotateByX(double y, double z, double thetax, double& outy, double& outz)
  {
    double y1 = y;//将变量拷贝一次，保证&y == &y这种情况下也能计算正确
    double z1 = z;
    double rx = thetax * CV_PI / 180;
    outy = cos(rx) * y1 - sin(rx) * z1;
    outz = cos(rx) * z1 + sin(rx) * y1;
  }
static float static_depth = 0;
static float static_real_x = 0;
static float static_real_y = 0;

int main(int argc, char **argv)
{
        ros::init(argc, argv, "aruco_det");
        ros::NodeHandle nh("~");
        image_transport::ImageTransport it(nh);
        //更新频率为30HZ
	ros::Rate loop_rate(30);
        //【发布】识别
        pose_pub = nh.advertise<geometry_msgs::Pose>("/vision/target", 1);

        // 发布ArUco检测结果的话题
        aruco_pub = it.advertise("/camera/rgb/image_aruco_det", 1);

        sensor_msgs::ImagePtr msg_ellipse;
        //开启编号为0的摄像头
	cv::VideoCapture cap(0);
	cv::Mat frame;

        cv::Mat camera_matrix;
        cv::Mat distortion_coefficients;

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

        cout<<"fx="<<fx<<endl;

        //相机内参
        camera_matrix =cv::Mat(3,3,CV_64FC1,cv::Scalar::all(0));
        camera_matrix.ptr<double>(0)[0]=582.611780;
        camera_matrix.ptr<double>(0)[2]=355.598968;
        camera_matrix.ptr<double>(1)[1]=582.283970;
        camera_matrix.ptr<double>(1)[2]=259.508932;
        camera_matrix.ptr<double>(2)[2]=1.0f;
        //相机畸变参数
        distortion_coefficients=cv::Mat(5,1,CV_64FC1,cv::Scalar::all(0));
        distortion_coefficients.ptr<double>(0)[0]=-0.401900;
        distortion_coefficients.ptr<double>(1)[0]=0.175110;
        distortion_coefficients.ptr<double>(2)[0]=0.002115;
        distortion_coefficients.ptr<double>(3)[0]=-0.003032;
        distortion_coefficients.ptr<double>(4)[0]=0.0;

        //ArUco Marker字典选择
        Ptr<cv::aruco::Dictionary> dictionary=cv::aruco::getPredefinedDictionary(10);
        vector<double> rv(3),tv(3);
        cv::Mat rvec(rv),tvec(tv);
	while (ros::ok())
	{
		cap >> frame;
		if (!frame.empty())
		{
                        std::vector<int> markerids;
                        vector<vector<Point2f> > markerCorners,rejectedCandidate;
                        Ptr<cv::aruco::DetectorParameters> parameters=cv::aruco::DetectorParameters::create();
                        cv::aruco::detectMarkers(frame,dictionary,markerCorners,markerids,parameters,rejectedCandidate);

			bool deted = false;
                        if (markerids.size()>0)
			{
                            cv::Mat RoteM, TransM;
                            cv::Point3f Theta_C2W;
                            cv::Point3f Theta_W2C;
                            cv::Point3f Position_OcInW;

                            cv::aruco::estimatePoseSingleMarkers(markerCorners,0.2,camera_matrix,distortion_coefficients,rvec,tvec);
                            double rm[9];
                            RoteM = cv::Mat(3, 3, CV_64FC1, rm);
                            Rodrigues(rvec, RoteM);
                            double r11 = RoteM.ptr<double>(0)[0];
                            double r12 = RoteM.ptr<double>(0)[1];
                            double r13 = RoteM.ptr<double>(0)[2];
                            double r21 = RoteM.ptr<double>(1)[0];
                            double r22 = RoteM.ptr<double>(1)[1];
                            double r23 = RoteM.ptr<double>(1)[2];
                            double r31 = RoteM.ptr<double>(2)[0];
                            double r32 = RoteM.ptr<double>(2)[1];
                            double r33 = RoteM.ptr<double>(2)[2];
                            TransM = tvec;

                            double thetaz = atan2(r21, r11) / CV_PI * 180;
                            double thetay = atan2(-1 * r31, sqrt(r32*r32 + r33*r33)) / CV_PI * 180;
                            double thetax = atan2(r32, r33) / CV_PI * 180;

                            Theta_C2W.z = thetaz;
                            Theta_C2W.y = thetay;
                            Theta_C2W.x = thetax;

                            Theta_W2C.x = -1 * thetax;
                            Theta_W2C.y = -1 * thetay;
                            Theta_W2C.z = -1 * thetaz;

                            double tx = tvec.ptr<double>(0)[0];
                            double ty = tvec.ptr<double>(0)[1];
                            double tz = tvec.ptr<double>(0)[2];
                            double x = tx, y = ty, z = tz;
                            //ZYX axis rotate
                            CodeRotateByZ(x, y, -1 * thetaz, x, y);
                            CodeRotateByY(x, z, -1 * thetay, x, z);
                            CodeRotateByX(y, z, -1 * thetax, y, z);

                            Position_OcInW.x = x*-1;
                            Position_OcInW.y = y*-1;
                            Position_OcInW.z = z*-1;
                            geometry_msgs::Pose pose_now;
                            pose_now.position.x = Position_OcInW.z;
                            pose_now.position.y = -Position_OcInW.x;
                            pose_now.position.z = Position_OcInW.y;
                            pose_now.orientation.w = 1;

						
                            static_depth  = Position_OcInW.z;
                            static_real_x = -Position_OcInW.x;
                            static_real_y = Position_OcInW.y;;

                            cout << "flag_detected: " <<  pose_now.orientation.w <<endl;
                            cout << "pos_target: [X Y Z] : " << " " << pose_now.position.x  << " [m] "<< pose_now.position.y   <<" [m] "<< pose_now.position.z <<" [m] "<<endl;

                            pose_pub.publish(pose_now);
                            deted=true;

			}
			if (!deted)
			{
				geometry_msgs::Pose pose_now;
				pose_now.position.x = static_depth;
				pose_now.position.y = static_real_x;
				pose_now.position.z = static_real_y;
				pose_now.orientation.w = 0;
				pose_pub.publish(pose_now);

                                cout << "flag_detected: " <<  pose_now.orientation.w <<endl;
                                cout << "pos_target: [X Y Z] : " << " " << pose_now.position.x  << " [m] "<< pose_now.position.y   <<" [m] "<< pose_now.position.z <<" [m] "<<endl;

			}

			Mat img_copy;
			frame.copyTo(img_copy);
                        cv::aruco::drawDetectedMarkers(img_copy,markerCorners,markerids);
                        msg_ellipse = cv_bridge::CvImage(std_msgs::Header(), "bgr8", img_copy).toImageMsg();
                        aruco_pub.publish(msg_ellipse);
                        cv::waitKey(1);

		}
		ros::spinOnce();
    	loop_rate.sleep();
	}

	cap.release();

}




