//
//  ViewController.h
//  Collegues
//
//  Created by JETS Mobile Lab - 9 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;
- (IBAction)previousClicked:(UIButton *)sender;
- (IBAction)nextClicked:(UIButton *)sender;

@end

