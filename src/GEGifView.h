//
//  GEGifView.h
//
//  Created by godera on 9/14/13.
//  Copyright (c) 2013. All rights reserved.
//
//  QQ: 719181178
/* from SvGifView and OLImageView */
/* MRC */

/*usage:
 GEGifView* gifView = [[[GEGifView alloc] initWithFrame:CGRectMake(0, 100, 320, 130)] autorelease];
 gifView.fileName = @"jiafei.gif";
 gifView.repeatCount = 2;
 [self.view addSubview:gifView];
 _gifView = gifView;
 [gifView start];
 */
/* Attention: like UIImageView, its userInteractionEnabled defaults to NO, avoid to intercept touch */

//0 to close debug, 1 to open
#ifdef DEBUG
#define DEBUG_SWITCH_GIF 0
#else
#define DEBUG_SWITCH_GIF 0
#endif

#if DEBUG_SWITCH_GIF
#define GELOG_GIF NSLog
#else
#define GELOG_GIF(...)
#endif

#define KEY_FRAME_IMAGES @"KEY_FRAME_IMAGES"
#define KEY_FRAME_START_TIMES @"KEY_FRAME_START_TIMES"

#import <UIKit/UIKit.h>

@interface GEGifView : UIView

//data source properties
@property (nonatomic, copy) NSData* data;//gif data
@property (nonatomic, copy) NSString* fileName;//gif file from bundle
@property (nonatomic, copy) NSString* filePath;//gif file path
@property (nonatomic, copy) NSDictionary* frameItems;//contains frame images and frame start times.

@property (nonatomic, assign) NSInteger repeatCount;//defaults to infinite
@property (nonatomic, readonly) CGFloat duration;//the total time

@property (nonatomic, retain) UIImage* image;

/* brief The default mode (NSDefaultRunLoopMode), causes the animation to pauses while it is contained in an actively scrolling `UIScrollView`. 
         Use NSRunLoopCommonModes if you don't want this behavior.
 */
@property (nonatomic, copy) NSString *runLoopMode;

@property (nonatomic, assign) BOOL clearWhenStop;//defaults to YES.

- (id)initWithFrame:(CGRect)frame;//default init method

- (void)start;

- (void)stop;

- (void)pause;

@end
