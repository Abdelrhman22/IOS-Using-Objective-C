//
//  ViewController.h
//  Navigation Controller
//
//  Created by JETS Mobile Lab - 9 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextProtocol.h"
@interface ViewController : UIViewController <ClearTextProtocol>
@property (weak, nonatomic) IBOutlet UITextField *nameText;

- (IBAction)gotoSecondView:(UIButton *)sender;
-(void) clearTxt;
@end

