//
//  RowInfoViewController.m
//  UserDefaults
//
//  Created by JETS on 3/13/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import "RowInfoViewController.h"

@interface RowInfoViewController ()

@end

@implementation RowInfoViewController

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

-(void)viewDidAppear:(BOOL)animated{
    _nameLabel.text = _nameString;
    _passwordLabel.text = _passwordString;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
