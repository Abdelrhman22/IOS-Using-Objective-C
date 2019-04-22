//
//  ViewController.h
//  ToolBarDemo
//
//  Created by JETS Mobile Lab - 9 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

- (IBAction)alert:(UIBarButtonItem *)sender;
- (IBAction)imageClicked:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

