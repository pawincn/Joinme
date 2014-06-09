//
//  BWAppDelegate.h
//  Joinme
//
//  Created by bwang on 5/27/14.
//  Copyright (c) 2014 bwang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"

@interface BWAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (strong, nonatomic) BMKMapManager * mapManager;

@end
