#include"ros/ros.h"

using namespace ros;

int main(int argc, char *argv[])
{
    init(argc,argv,"set_param");

    NodeHandle nh;

    nh.setParam("type","xiaoming");
    nh.setParam("radius",0.15);

    param::set("type_param","xiaobai");
    param::set("radius_param",0.15);


    param::set("radius_param",0.2);
    return 0;
}


