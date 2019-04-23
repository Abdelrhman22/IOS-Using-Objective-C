//
//  ViewController.m
//  MapDemo
//
//  Created by JETS Mobile Lab - 9 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "MADAnotation.h"
@interface ViewController ()
- (IBAction)click:(id)sender;

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
 - (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
     printf("didSelectAnnotationView\n");
}
- (IBAction)click:(id)sender {
    CGPoint touchPoint=[sender locationInView:_mapView];
    CLLocationCoordinate2D touchcoordinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    MADAnotation * myAnnotation  = [MADAnotation new];
    myAnnotation.coordinate=touchcoordinate;
    myAnnotation.title=@"Arafa";
    myAnnotation.subtitle=@"Jets";
    [_mapView addAnnotation:myAnnotation];
}
@end
