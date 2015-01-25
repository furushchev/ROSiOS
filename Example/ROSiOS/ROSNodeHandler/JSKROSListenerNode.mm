//
//  JSKROSListenerNode.mm
//  ROSiOS
//
//  Created by FurutaYuki on 1/25/15.
//  Copyright (c) 2015 Furushchev. All rights reserved.
//

#import "JSKROSListenerNode.h"

JSKROSListenerNode::JSKROSListenerNode()
{
    th_ = new boost::thread(&JSKROSListenerNode::spin, this);
    sub_ = nh_.subscribe("chatter", 1000, &JSKROSListenerNode::chatterCB, this);
}

JSKROSListenerNode::~JSKROSListenerNode()
{
    ros::shutdown();
    th_->join();
    delete th_;
}

void JSKROSListenerNode::spin()
{
    ros::spin();
}

void JSKROSListenerNode::chatterCB(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("I heard: [%s]", msg->data.c_str());
    
    @autoreleasepool {
        if (listenerViewController != nil) {
            [listenerViewController performSelectorOnMainThread:@selector(chatterCallback:)
                                                     withObject:[NSString stringWithUTF8String:msg->data.c_str()]
                                                  waitUntilDone:YES];
        }
    }
}