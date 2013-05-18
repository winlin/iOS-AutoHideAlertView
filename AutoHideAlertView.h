//
//  AutoHideAlertView.h
//  test
//
//  Created by gtliu on 5/17/13.
//  Copyright (c) 2013 gtliu All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoHideAlertView : UIAlertView
-(void)show;
-(void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated;
@end
