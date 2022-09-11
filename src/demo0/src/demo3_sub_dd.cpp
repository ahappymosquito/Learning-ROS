#include"ros/ros.h"
#include"demo0/dd.h"

using namespace ros;

void domesg(const demo0::dd::ConstPtr& person)
{
    ROS_INFO("%s,%d,%.2f",person->name.c_str(),person->age,person->height);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    init(argc,argv,"jiazhang");
    NodeHandle nh;
    Subscriber sub = nh.subscribe("liaotian",10,domesg);

    spin();
    return 0;
}
