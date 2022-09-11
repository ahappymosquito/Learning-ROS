#include"ros/ros.h"
#include"demo1/addints.h"
using namespace ros;

bool donums(demo1::addints::Request& request,
            demo1::addints::Response& response)
            {
                int n1 = request.n1;
                int n2 = request.n2;
                int sum = n1+n2;
                response.sum = sum;
                ROS_INFO("%d",sum);
                return true;
            }


int main(int argc, char *argv[])
{
    init(argc,argv,"fuwu");
    NodeHandle nh;
    ServiceServer server = nh.advertiseService("addints",donums);


    spin();
    return 0;
}
