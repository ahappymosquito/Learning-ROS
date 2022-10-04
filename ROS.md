# jetson nano 2gb ubuntu18.04下ros安装

1. 安装镜像

   > https://developer.nvidia.com/embedded/l4t/r32_release_v6.1/jeston_nano_2gb/jetson-nano-2gb-jp46-sd-card-image.zip

2. 烧录软件

   > https://developer.nvidia.com/embedded/l4t/r32_release_v6.1/jeston_nano_2gb/jetson-nano-2gb-jp46-sd-card-image.zip

3. 换源（只有华为源有效）

   > ```wget -O /etc/apt/sources.list https://repo.huaweicloud.com/repository/conf/Ubuntu-Ports-bionic.list```
   > 
   > ```sudo apt update```
   > 
   > ```sudo apt upgrade```

4. 安装ROS

   > ```sudo apt install ros-melodic-desktop-full```
   >
   > ```echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc```
   >
   > ```source ~/.bashrc```

5. 没有报错说明安装成功



参考文献

http://www.autolabor.com.cn/book/ROSTutorials/chapter1/11-rosjian-jie-yu-an-zhuang.html
