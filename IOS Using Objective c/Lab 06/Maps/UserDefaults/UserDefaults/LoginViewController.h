//
//  LoginViewController.h
//  UserDefaults
//
//  Created by JETS on 3/11/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *loginName;
@property (strong, nonatomic) IBOutlet UITextField *loginPassword;
- (IBAction)loginBtn:(id)sender;

@end
