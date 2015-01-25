//
//  JSKListenerViewController.h
//  ROSiOS
//
//  Created by FurutaYuki on 1/25/15.
//  Copyright (c) 2015 Furushchev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSKListenerViewController : UIViewController
- (void)chatterCallback:(NSString*)message;
@end
