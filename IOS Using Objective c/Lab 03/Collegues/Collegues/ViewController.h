//
//  ViewController.h
//  Collegues
//
//  Created by JETS Mobile Lab - 9 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Friend.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *phone;

@property (weak, nonatomic) IBOutlet UILabel *age;

@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property Friend* friend;
@end

