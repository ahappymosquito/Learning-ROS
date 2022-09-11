#include"ros/ros.h"
#include<std_msgs/String.h>

using namespace ros;

void domesgs(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("订阅数据:%s",msg->data.c_str());
}


int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");

    init(argc,argv,"hello1");
    NodeHandle nh;

    Subscriber sub = nh.subscribe<std_msgs::String>("fang",10,domesgs);

    spin();
    return 0;
}
