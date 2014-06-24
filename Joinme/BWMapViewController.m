//
//  BWMapViewController.m
//  Joinme
//
//  Created by bwang on 6/17/14.
//  Copyright (c) 2014 bwang. All rights reserved.
//

#import "BWMapViewController.h"

@interface BWMapViewController ()

@end

@implementation BWMapViewController

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
    // Do any additional setup after loading the view.
    [MAMapServices sharedServices].apiKey = @"bcb6e62439103939fb16ca2d9036368a";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.mapView = [[MAMapView alloc] initWithFrame: CGRectMake(0, 0, 320, 460)];
    self.mapView.delegate = self;
    [self.view addSubview:self.mapView];
    [self.mapView addObserver:self forKeyPath:@"showsUserLocation" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.mapView.showsUserLocation = YES;
}

- (void)modeAction
{
    [self.mapView setUserTrackingMode:MAUserTrackingModeFollow animated:YES];
}

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation
{
    self.mapView.centerCoordinate = userLocation.location.coordinate;
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
