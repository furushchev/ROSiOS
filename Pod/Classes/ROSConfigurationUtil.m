//
//  ROSConfigurationUtil.m
//  ROSiOS
//
//  Created by FurutaYuki on 1/29/15.
//  Copyright (c) 2015 JSK Lab. All rights reserved.
//

#import "ROSConfigurationUtil.h"

@implementation ROSConfigurationUtil

+ (void)insertROSConfigurationAsInitialInterfaceOfWindow:(UIWindow*)window withNodeName:(NSString*)nodeName
{
    [ROSConfigurationUtil insertROSConfigurationAsInitialInterfaceOfWindow:window withNodeName:nodeName anonymous:NO];
}

+ (void)insertROSConfigurationAsInitialInterfaceOfWindow:(UIWindow *)window withNodeName:(NSString *)nodeName anonymous:(BOOL)anon
{
    // set configuration view before entering main story board
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ROSiOS" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    UIStoryboard *configureStoryboard = [UIStoryboard storyboardWithName:@"Configuration" bundle:bundle];
    
    window.rootViewController = [configureStoryboard instantiateInitialViewController];
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:nodeName forKey:@"kROSiOSNodeNameKey"]; // DO NOT CHANGE!
    [ud setBool:anon forKey:@"kROSiOSNodeAnonymous"]; // DO NOT CHANGE!
    [ud synchronize];
}

@end
