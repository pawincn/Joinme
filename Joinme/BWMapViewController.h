//
//  BWMapViewController.h
//  Joinme
//
//  Created by bwang on 6/17/14.
//  Copyright (c) 2014 bwang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapSearchKit/AMapSearchAPI.h>

@interface BWMapViewController : UIViewController<MAMapViewDelegate, AMapSearchDelegate>

@property (nonatomic, strong) MAMapView *mapView;
@property (nonatomic, strong) AMapSearchAPI *search;

@end
