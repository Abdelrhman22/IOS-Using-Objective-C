//
//  AppDelegate.h
//  MapRegisteration
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 Esraa And Passant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

