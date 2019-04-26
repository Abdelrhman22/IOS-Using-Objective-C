//
//  LoginViewController.m
//  UserDefaults
//
//  Created by JETS on 3/11/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginBtn:(id)sender {
    
    NSUserDefaults *defaults2 =[NSUserDefaults standardUserDefaults];
    
    NSString *strName = _loginName.text;
    NSString *strPass = _loginPassword.text;
    
    if([strPass isEqualToString:[defaults2 objectForKey:@"password"]] && [strName isEqualToString:[defaults2 objectForKey:@"name"]]){
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"login message" message:@"congractulations you logeed in succeffuly" delegate:self cancelButtonTitle:nil otherButtonTitles:@"cancel", nil];
        
        [alert show];
    
    }else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"login message" message:@"Wrong password" delegate:self cancelButtonTitle:nil otherButtonTitles:@"cancel", nil];
        
        [alert show];

    }
    
}
@end
