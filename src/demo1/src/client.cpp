#include"ros/ros.h"
#include"demo1/addints.h"

using namespace ros;


int main(int argc, char *argv[])
{
    if(argc !=3)
    {
        ROS_INFO("error nums");
        return 1;
    }
    init(argc,argv,"fasong");
    NodeHandle nh;
    ServiceClient client = nh.serviceClient<demo1::addints>("addints");
    demo1::addints sum;
    sum.request.n1 = atoi(argv[1]);
    sum.request.n2 = atoi(argv[2]);


    client.waitForExistence();
    bool flag = client.call(sum);
    if(flag)
    {
        ROS_INFO("the sum is %d",sum.response.sum);
    }
    else 
    {
        ROS_INFO("error");
    }
    return 0;
}
