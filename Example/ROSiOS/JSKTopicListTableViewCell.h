//
//  JSKTopicListTableViewCell.h
//  ROSiOSSampleApp
//
//  Created by FurutaYuki on 12/27/14.
//  Copyright (c) 2014 JSK Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSKTopicListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *topicName;
@property (weak, nonatomic) IBOutlet UILabel *dataType;

@end
