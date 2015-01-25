//
//  JSKROSTalkerNode.h
//  ROSiOS
//
//  Created by FurutaYuki on 1/25/15.
//  Copyright (c) 2015 Furushchev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <string>
#import <ros/ros.h>
#import <boost/thread/thread.hpp>
#import "JSKTalkerViewController.h"


class JSKROSTalkerNode {
    ros::NodeHandle nh_;
    ros::Publisher pub_;
    
    boost::thread *th_;
    
public:    
    JSKROSTalkerNode();
    ~JSKROSTalkerNode();
    void spin();
    std::string publish(int);
};