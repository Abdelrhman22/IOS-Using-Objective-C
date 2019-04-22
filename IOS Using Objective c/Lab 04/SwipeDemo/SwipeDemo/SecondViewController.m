//
//  SecondViewController.m
//  SwipeDemo
//
//  Created by JETS Mobile Lab - 9 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
- (IBAction)dismiss:(UIButton *)sender;

@end

@implementation SecondViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    printf("viewDidLoad \n");
    // Do any additional setup after loading the view.
}
/*
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:<#animated#>]
     printf("viewWillAppear \n");
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:<#animated#>]
    printf("viewDidAppear \n");
}
 */
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismiss:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
