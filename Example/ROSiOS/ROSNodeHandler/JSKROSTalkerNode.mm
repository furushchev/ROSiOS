//
//  JSKROSTalkerNode.mm
//  ROSiOS
//
//  Created by FurutaYuki on 1/25/15.
//  Copyright (c) 2015 Furushchev. All rights reserved.
//

#import "JSKROSTalkerNode.h"
#import <sstream>
#import <std_msgs/String.h>

JSKROSTalkerNode::JSKROSTalkerNode()
{
    th_ = new boost::thread(&JSKROSTalkerNode::spin, this);
    pub_ = nh_.advertise<std_msgs::String>("chatter", 1000);
}

JSKROSTalkerNode::~JSKROSTalkerNode()
{
    ros::shutdown();
    th_->join();
    delete th_;
}

void JSKROSTalkerNode::spin()
{
    ros::spin();
}

std::string JSKROSTalkerNode::publish(int count)
{
    std_msgs::String msg;

    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();
    
    pub_.publish(msg);
    
    ROS_INFO("%s", msg.data.c_str());
    
    return msg.data;
}