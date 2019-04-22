//
//  ViewController.m
//  ToolBarDemo
//
//  Created by JETS Mobile Lab - 9 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    UIAlertView *alert1 ;
    UIAlertView *alert2 ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)alert:(UIBarButtonItem *)sender {
    //printf("AlertClicked\n");
     alert1 = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                    message:@"Hello Jets"
                                                   delegate:self
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Ok",@"Cancel",nil];
    alert1.alertViewStyle=UIAlertViewStyleLoginAndPasswordInput;
    [alert1 show];
}

- (IBAction)imageClicked:(UIBarButtonItem *)sender {
        //printf("ImageClicked\n");
//    alert2 = [[UIAlertView alloc] initWithTitle:@"Alert"
//                                        message:@"Hello Jets"
//                                       delegate:self
//                              cancelButtonTitle:nil
//                              otherButtonTitles:@"Ok",@"Cancel",nil];
//    alert2.alertViewStyle=UIAlertViewStyleLoginAndPasswordInput;
//    [alert2 show];
    UIImage *image=[UIImage imageNamed:@"logo.jpg"];
    [_img setImage:image];
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *userName;
    NSString *password;
    if(alertView == alert1)
    {
        switch (buttonIndex) {
            case 0:
                userName = [alertView textFieldAtIndex:0].text;
                password = [alertView textFieldAtIndex:1].text;
                printf("Alert .... name %s  password %s\n",[userName UTF8String] , [password UTF8String]);
                break;
            case 1:
                printf("Cancel\n");
                break;
            default:
                break;
        }
    }
//    else
//    {
//        switch (buttonIndex) {
//            case 0:
//                userName = [alertView textFieldAtIndex:0].text;
//                password = [alertView textFieldAtIndex:1].text;
//                printf("Image .... name %s  password %s\n",[userName UTF8String] , [password UTF8String]);
//                break;
//            case 1:
//                printf("Cancel\n");
//                break;
//            default:
//                break;
//        }
//    }
}
@end
