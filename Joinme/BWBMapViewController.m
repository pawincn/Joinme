//
//  BWBMapViewController.m
//  Joinme
//
//  Created by bwang on 6/9/14.
//  Copyright (c) 2014 bwang. All rights reserved.
//

#import "BWBMapViewController.h"

@interface BWBMapViewController ()

@end

@implementation BWBMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // init baidu map view here.
    BMKMapView * mapView = [[BMKMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    self.view = mapView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
