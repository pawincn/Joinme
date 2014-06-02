//
//  BWActivity.h
//  Joinme
//
//  Created by bwang on 6/2/14.
//  Copyright (c) 2014 bwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface BWActivity : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSString *address;
@property (assign, nonatomic) CLLocationCoordinate2D location;
@property (strong, nonatomic) NSDate *startTime;

@end
