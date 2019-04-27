//
//  ViewController.h
//  MapRegisteration
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 Esraa And Passant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate>

@property CLLocationManager * locationManager;

@end

