//
//  ViewController.m
//  HelloWorld
//
//  Created by JETS Mobile Lab - 9 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)changeText:(UIButton *)sender
{
    _myLabel.text=@"Hello Arafa";
}
- (IBAction)getValue:(UIButton *)sender
{
    NSString *value=[NSString new];
    value=_edtName.text;
    _myLabel2.text=value;
}
@end
