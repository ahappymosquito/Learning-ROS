#include"ros/ros.h"

using namespace ros;


int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");

    init(argc,argv,"get");

    NodeHandle nh;


    // 1.param
    double radius = nh.param("radius",0.5);
    ROS_INFO("radius = %.2f",radius);

    // 2.getParam
    double radius1 = 0.0;
    bool result = nh.getParam("radius",radius1);
    if (result)
    {
        ROS_INFO("%.2f",radius1);
    }
    else ROS_INFO("error");
    
    // 3.getParamCached 
    // 4.getParamNames
    ROS_INFO("----------------------------");
    std::vector<std::string> param_names1;
    nh.getParamNames(param_names1);
    for (auto &&name : param_names1)
    {
        ROS_INFO("名称解析name = %s",name.c_str());        
    }
    ROS_INFO("----------------------------");

    // 5.hasParam
    ROS_INFO("存在 radius 吗? %d",nh.hasParam("radius"));
    ROS_INFO("存在 radiuss 吗? %d",nh.hasParam("radiuss"));
    
    // 6.serchParam
    std::string key;
    nh.searchParam("radius",key);
    ROS_INFO("搜索键:%s",key.c_str());

    //all in up is nodehandle
    //ros::param:: get/getParamNames

    return 0;
}
