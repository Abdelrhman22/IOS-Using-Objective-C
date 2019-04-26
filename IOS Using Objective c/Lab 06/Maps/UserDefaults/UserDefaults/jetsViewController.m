//
//  jetsViewController.m
//  UserDefaults
//
//  Created by JETS on 3/11/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import "jetsViewController.h"

@interface jetsViewController ()

@end

@implementation jetsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerBtn:(id)sender {
    
    NSUserDefaults *defaults1 =[NSUserDefaults standardUserDefaults];
    
    NSString *str1 = _name.text;
    NSString *str2 = _password.text;
    NSString *str3 = _latitude.text;
    NSString *str4 = _longitude.text;
  //  NSString *str3 = _phone.text;
    
    [_name setText:@""];
    [_password setText:@""];
    [_latitude setText:@""];
    [_longitude setText:@""];
  //  [_phone setText:@""];
    
    [defaults1 setObject:str1 forKey:@"name"];
    [defaults1 setObject:str2 forKey:@"password"];
    [defaults1 setObject:str3 forKey:@"latitude"];
    [defaults1 setObject:str4 forKey:@"longitude"];
    
//    [defaults1 setObject:str1 forKey:@"name"];
//    [defaults1 setObject:str2 forKey:@"password"];
//    [defaults1 setObject:str3 forKey:@"phone"];
    
    
}

- (IBAction)signinBtn:(id)sender {
    
//    NSUserDefaults *defaults2 =[NSUserDefaults standardUserDefaults];
//    
//    [_name setText:[defaults2 objectForKey:@"name"]];
//    [_password setText:[defaults2 objectForKey:@"password"]];
//    [_phone setText:[defaults2 objectForKey:@"phone"]];
    
}

@end
