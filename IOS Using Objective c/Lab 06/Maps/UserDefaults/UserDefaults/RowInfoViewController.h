//
//  RowInfoViewController.h
//  UserDefaults
//
//  Created by JETS on 3/13/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RowInfoViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *passwordLabel;

@property NSString *nameString ;
@property NSString *passwordString ;

@end
