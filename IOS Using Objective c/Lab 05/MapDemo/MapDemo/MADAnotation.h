//
//  MADAnotation.h
//  MapDemo
//
//  Created by JETS Mobile Lab - 9 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MADAnotation : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy, ) NSString *title;

@property (nonatomic, copy) NSString *subtitle;

@end

NS_ASSUME_NONNULL_END
