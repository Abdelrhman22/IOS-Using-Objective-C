//
//  ViewController.m
//  Collegues
//
//  Created by JETS Mobile Lab - 9 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     _name.text=[_friend name];
     _phone.text=[_friend phone];
     _age.text=[NSString stringWithFormat:@"%d",[_friend age]];
     _email.text=[_friend email];
     _address.text=[_friend address];
}


@end
