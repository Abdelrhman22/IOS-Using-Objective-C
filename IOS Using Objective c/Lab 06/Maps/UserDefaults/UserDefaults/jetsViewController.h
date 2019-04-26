//
//  jetsViewController.h
//  UserDefaults
//
//  Created by JETS on 3/11/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jetsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *latitude;
@property (strong, nonatomic) IBOutlet UITextField *longitude;

@property (strong, nonatomic) IBOutlet UITextField *phone;
- (IBAction)registerBtn:(id)sender;
- (IBAction)signinBtn:(id)sender;
- (IBAction)clearBtn:(id)sender;


@end
