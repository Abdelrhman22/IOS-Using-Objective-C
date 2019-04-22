//
//  SecondViewController.m
//  Navigation Controller
//
//  Created by JETS Mobile Lab - 9 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem * mybarItem = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    [self.navigationItem setRightBarButtonItem:mybarItem];
    self.title=@"SeondView";
    NSString *hello=@"Hello ";
    _nameLabel.text=[hello stringByAppendingString:_str];
}

-(void) done
{
    printf("Done ... \n");
    [_firstView clearTxt];
    [self.navigationController popViewControllerAnimated:NO];
    /*
     ViewController * firstVc = [self.storyboard instantiateViewControllerWithIdentifier:@"firstView"];
     [self.navigationController pushViewController:firstVc animated:NO];
     */
}
@end
