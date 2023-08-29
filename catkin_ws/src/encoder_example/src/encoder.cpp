#include "encoder_example/encoder.hpp"

namespace encoder
{
    Encoder::Encoder(ros::NodeHandle nh) : nh_(nh)
    {
        //Encoder Signal(각도)를 받는 subscriber 정의. 수신하는 토픽의 이름은 /encoder/angle
        encoder_signal_subscriber_ = nh_.subscribe("/encoder/angle",1, &Encoder::signalCb, this);
        //속도 값을 보내는 publisher 정의. 출력되는 토픽의 이름은 /encoder/velocity
        velocity_value_publisher_ = nh_.advertise<geometry_msgs::TwistStamped>("encoder/velocity/", 1);
    }
    Encoder::~Encoder() {}

    void Encoder::signalCb(const geometry_msgs::TwistStamped& signal_msg)
    {
        double time_now = signal_msg.header.stamp.toSec();
        double angle_now = signal_msg.twist.angular.z;
        //최초 값을 저장한 이후에 미분을 수행하기 위한 조건
        if (count_ > 0)
        {
            ROS_INFO_STREAM("Angle value : " << angle_now);
            double velocity = (angle_now - angle_prev_) / (time_now - time_prev_);
            ROS_INFO_STREAM("Velocity value : " << velocity);
            geometry_msgs::TwistStamped msg;
            msg.header.stamp = signal_msg.header.stamp;
            msg.twist.angular.z = velocity; //ROS에서는 Z가 upvector
            velocity_value_publisher_.publish(msg);
        }
        time_prev_ = time_now;
        angle_prev_ = angle_now;
        count_++;
    }
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "encoder_example_node ");
    ros::NodeHandle nh;

    encoder::Encoder e(nh);
    ros::spin();
    return 0;
}