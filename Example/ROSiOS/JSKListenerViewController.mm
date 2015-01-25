//
//  JSKListenerViewController.mm
//  ROSiOS
//
//  Created by FurutaYuki on 1/25/15.
//  Copyright (c) 2015 Furushchev. All rights reserved.
//

#import "JSKListenerViewController.h"
#import "JSKROSListenerNode.h"

@interface JSKListenerViewController ()
{
    JSKROSListenerNode *rosListenerNode_;
}

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation JSKListenerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    rosListenerNode_ = new JSKROSListenerNode();
    rosListenerNode_->listenerViewController = self;
}

- (void)viewWillDisappear:(BOOL)animated
{
    delete rosListenerNode_;
    [super viewWillDisappear:animated];
}

- (void)chatterCallback:(NSString*)message
{
    self.textView.text = [self.textView.text stringByAppendingFormat:@"I heard: [%@]\n", message];
}

@end
