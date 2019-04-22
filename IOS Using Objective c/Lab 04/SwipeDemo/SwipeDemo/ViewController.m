//
//  ViewController.m
//  SwipeDemo
//
//  Created by JETS Mobile Lab - 9 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *subView;

@end

@implementation ViewController
{
    void (^myBlock2) ();
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *rec =[[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                                             action:@selector(next)];
    rec.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.subView addGestureRecognizer:rec];
    // -------------
    _myBlock = ^int (int a , int b)
    {
        printf("myBlock\n");
        return a*b;
    };
    myBlock2 = ^(void)
    {
        printf("Block Two\n");
    };
}
-(void) next
{
    printf("Swipe\n");
    SecondViewController * secondVc = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secondVc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondVc animated:YES completion:nil];
}

@end
