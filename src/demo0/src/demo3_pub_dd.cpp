#include"ros/ros.h"
#include"demo0/dd.h"


using namespace ros;

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    init(argc,argv,"ren");
    NodeHandle nh;
    Publisher pub = nh.advertise<demo0::dd>("liaotian",10);

    demo0::dd person;
    person.name="neo";
    person.age = 19;
    person.height = 1.73;
    Rate rate(1);

    while (ok())
    {
        
        person.age +=1;
        pub.publish(person);
        ROS_INFO("hello,%d",person.age);
        rate.sleep();

        spinOnce();
        /* code */
    }
    

    return 0;
}
