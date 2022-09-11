#include"ros/ros.h"
#include"std_msgs/String.h"
#include<sstream>

using namespace ros;

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");       

    init(argc,argv,"helle0");
    NodeHandle nh;
    Publisher pub = nh.advertise<std_msgs::String>("fang",10);
    std_msgs::String msg;
    Rate rate(3);

    int count = 0;
    Duration(3).sleep();
    while (ok())
    {
        count++;
        std::stringstream ss;
        ss <<"hello --->" << count;

        msg.data = ss.str();
        pub.publish(msg);

        ROS_INFO("发布的数据是：%s",ss.str().c_str());
        rate.sleep();
        spinOnce();
    }
    
    return 0;
}
