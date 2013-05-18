iOS-AutoHideAlertView
=====================
When app resign active the appeared uialertview will disapper automaticlly.  
the realization is :  
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(autoHideWillResignActive:) name:UIApplicationWillResignActiveNotification object:nil];
