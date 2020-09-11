# vision_ws

Vision code for P100 quadrotor platform

方向定义： 目标位置 [机体系下：前方x为正，右方y为正，下方z为正]

标志位：   orientation.w 用作标志位 1代表识别到目标 0代表丢失目标

发布话题适用于椭圆、二维码、yolo等视觉算法

## 安装
```
git clone http://gitlab.amovauto.com/amovlab/vision_ws.git
cd vision_ws
catkin_make
```

## 相机标定
```
rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.0245 image:=/usb_cam/image_raw camera:=/usb_cam
```
size为标点板尺寸，square为每个方格宽度(m)，image:=相机话题
将得到的参数写入
```
vision_ws/src/vision_ws/config/camera_param.yaml
```
修改每个算法的launch文件，指向以上参数文件camera_param.yaml
```
vision_ws/src/aruco_det_ros/launch/aruco_det.launch
vision_ws/src/darknet_ros/darknet_ros/launch/darknet_ros.launch
vision_ws/src/ellipse_det_ros/launch/ellipse_det.launch
vision_ws/src/ellipse_det_ros/launch/ellipse_det_wt.launch
vision_ws/src/landpad_det_ros/launch/landpad_det.launch
```

## 运行
1.降落板检测
```
roslaunch aruco_det aruco_det.launch # 二维码检测
roslaunch landpad_det landpad_det.launch # 降落板检测
```
修改真实二维码的大小(边长，单位米)，aruco_det.cpp的132行，默认是0.2米
http://gitlab.amovauto.com/amovlab/vision_ws/blob/master/src/aruco_det_ros/aruco_det.cpp#L132

降落板中每个二维码的边长是固定的，其中较大的二维码边长为0.15米，较小的二维码边长为0.1米，代码见245和251行
http://gitlab.amovauto.com/amovlab/vision_ws/blob/master/src/landpad_det_ros/landpad_det.cpp#L245
http://gitlab.amovauto.com/amovlab/vision_ws/blob/master/src/landpad_det_ros/landpad_det.cpp#L251


2.椭圆检测
```
roslaunch ellipse_det ellipse_det.launch # 所有的椭圆
roslaunch ellipse_det ellipse_det_wt.launch # 带训练的指定椭圆
```
修改圆的真实半径，在ellipse_det.cpp的第28行
http://gitlab.amovauto.com/amovlab/vision_ws/blob/master/src/ellipse_det_ros/ellipse_det.cpp#L28


3.YOLO检测
```
roslaunch darknet_ros darknet_ros.launch
```
4.数字检测
```
roslaunch digitnum_det_ros num_det.launch
```

