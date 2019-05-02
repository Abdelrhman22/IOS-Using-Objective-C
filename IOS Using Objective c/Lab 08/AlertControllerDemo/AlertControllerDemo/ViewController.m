//
//  ViewController.m
//  AlertControllerDemo
//
//  Created by JETS Mobile Lab - 9 on 5/2/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showAlert:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)showAlert:(UIButton *)sender
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Alert"
                                 message:@"This is an alert"
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    //Add Buttons
    
    UIAlertAction* ok = [UIAlertAction
                                actionWithTitle:@"ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    printf("OK \n");
                                }];
    
    UIAlertAction* cancel = [UIAlertAction
                               actionWithTitle:@"cancel"
                               style:UIAlertActionStyleCancel
                               handler:^(UIAlertAction * action) {
                                   printf("Cancel \n");
                               }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}
@end
