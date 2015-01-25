//
//  JSKROSListenerNode.h
//  ROSiOS
//
//  Created by FurutaYuki on 1/25/15.
//  Copyright (c) 2015 Furushchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ros/ros.h>
#import <std_msgs/String.h>

#import <boost/thread/thread.hpp>

#import "JSKListenerViewController.h"

class JSKROSListenerNode {
    ros::NodeHandle nh_;
    ros::Subscriber sub_;
    
    boost::thread *th_;
public:
    JSKListenerViewController __weak *listenerViewController;
    
    JSKROSListenerNode();
    ~JSKROSListenerNode();
    
    void spin();
    void chatterCB(const std_msgs::String::ConstPtr&);
};
