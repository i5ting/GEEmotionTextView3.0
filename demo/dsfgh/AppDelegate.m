//
//  AppDelegate.m
//  dsfgh
//
//  Created by sang alfred on 12/17/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "AppDelegate.h"
#import "GEGifView.h"
#import "GEEmotionTextView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    
    GEGifView* gifView = [[GEGifView alloc] initWithFrame:CGRectMake(0, 100, 320, 130)] ;
    gifView.fileName = @"1微笑.gif";
//    gifView.repeatCount = 2;
    
//    _gifView = gifView;
//    for (int i = 0; i<1000000; i++) {
        [self.window addSubview:gifView];
        [gifView start];
//    }
    
    
    GEEmotionTextView* emotionView = [[GEEmotionTextView alloc] initWithFrame:CGRectMake(0, 40, 320, 0)];//no need to set height,sizeToFit can reset it.
    emotionView.emotionString = @"an [1微笑.gif]emotion 擦 emotion [1微笑] stringan返回日志在Eclipse控制台输出。 emotion[1微笑] string[1微笑]";
    emotionView.font = [UIFont systemFontOfSize:20];
    [self.window addSubview:emotionView];
    [emotionView sizeToFit];
    
    //Example2-for cell use:
//    if (_emotionView == nil) {
//        _emotionView = [[GEEmotionTextView alloc] initWithFrame:CGRectMake(10, 6, 300, 0)];//no need to set height,sizeToFit can reset it.
//        _emotionView.textColor = [UIColor colorWithRed:95.0/255.0 green:86.0/255.0 blue:70.0/255.0 alpha:1];
//        [self.contentView addSubview:_emotionView];
//    }
//    _desc.emotionString = describeValue;
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
