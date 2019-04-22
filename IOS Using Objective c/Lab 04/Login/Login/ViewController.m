//
//  ViewController.m
//  Login
//
//  Created by JETS Mobile Lab - 9 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userPassword;
- (IBAction)login:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *status;

@end

@implementation ViewController
{
    NSUserDefaults * userDefaults;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    userDefaults =[NSUserDefaults standardUserDefaults];
    [userDefaults setObject:@"arafa" forKey:@"userName"];
    [userDefaults setObject:@"123456" forKey:@"userPassword"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)login:(UIButton *)sender {
    printf("Clicked\n");
    NSString *name =[userDefaults objectForKey:@"userName"];
    NSString *password =[userDefaults objectForKey:@"userPassword"];
    if([[_userName text ] isEqualToString:name] && [[_userPassword text] isEqualToString:password])
    {
        _status.text=@"Sucess";
    }
    else
    {
        _status.text=@"Failed";
    }
   
}
@end
