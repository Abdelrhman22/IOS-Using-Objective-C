//
//  TableViewController.m
//  UserDefaults
//
//  Created by JETS on 3/13/19.
//  Copyright (c) 2019 JETS. All rights reserved.
//

#import "TableViewController.h"
#import "RowInfoViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController{
    
    NSMutableArray *info;
    RowInfoViewController *rv;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *defaults2 =[NSUserDefaults standardUserDefaults];
    [defaults2 objectForKey:@"name"];
    [defaults2 objectForKey:@"password"];
    [defaults2 objectForKey:@"latitude"];
    [defaults2 objectForKey:@"longitude"];
    
    
     rv =[self.storyboard instantiateViewControllerWithIdentifier:@"rowView"];
    
    
//    NSString *strName = _loginName.text;
//    NSString *strPass = _loginPassword.text;
    
   info =[NSMutableArray new];
    
//    
//    [info addObject:@"ahmed"];
//    [info addObject:@"mohamed"];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSUInteger *rowNum =0;
    
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}


@end
