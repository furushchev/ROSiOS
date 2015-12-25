//
//  ROSConfigurationUtil.h
//  ROSiOS
//
//  Created by FurutaYuki on 1/29/15.
//  Copyright (c) 2015 JSK Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ROSConfigurationUtil : NSObject
+ (void)insertROSConfigurationAsInitialInterfaceOfWindow:(UIWindow*)window withNodeName:(NSString*)nodeName;
+ (void)insertROSConfigurationAsInitialInterfaceOfWindow:(UIWindow *)window withNodeName:(NSString *)nodeName anonymous:(BOOL)anon;
@end
