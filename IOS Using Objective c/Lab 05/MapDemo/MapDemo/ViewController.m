//
//  ViewController.m
//  MapDemo
//
//  Created by JETS Mobile Lab - 9 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_mapView setZoomEnabled:NO];
    //[_mapView setDelegate:self];
    _mapView.delegate=self;
}
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated
{
    printf("regionWillChangeAnimated\n");
}
- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
      printf("regionDidChangeAnimated\n");
}
@end
