//
//  AutoHideAlertView.m
//  test
//
//  Created by gtliu on 5/17/13.
//  Copyright (c) 2013 gtliu All rights reserved.
//

#import "AutoHideAlertView.h"

@implementation AutoHideAlertView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)show
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(autoHideWillResignActive:) name:UIApplicationWillResignActiveNotification object:nil];
    [super show];
}

-(void)autoHideWillResignActive:(NSNotification *)noti
{
    [self dismissWithClickedButtonIndex:0 animated:YES];
}

-(void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    [super dismissWithClickedButtonIndex:buttonIndex animated:animated];
}
@end
