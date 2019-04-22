//
//  ViewController.m
//  AnimationDemo
//
//  Created by JETS Mobile Lab - 9 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property (weak, nonatomic) IBOutlet UILabel *mylabel;
@property BOOL check;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _ball.layer.cornerRadius=30;
    _ball.layer.borderColor = [UIColor blackColor].CGColor;
    _ball.layer.borderWidth=1;
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    _check=false;
    [self animatiom];
}

-(void) animatiom
{
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[_ball,_mylabel]];
    [_animator addBehavior:gravity];
    UICollisionBehavior * collision = [[UICollisionBehavior alloc] initWithItems:@[_ball,_mylabel]];
    collision.collisionDelegate=self;
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    [_animator addBehavior:collision];
    
    UIDynamicItemBehavior *item =[[UIDynamicItemBehavior alloc] initWithItems:@[_ball,_mylabel]];
    item.elasticity=0.75;
    item.resistance=0.5;
    [_animator addBehavior:item];
}
- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:
(id<UIDynamicItem>)item1 withBoundaryIdentifier:(id<NSCopying>)identifier
{
    if(_check)
    {
         _check=false;
         _ball.layer.backgroundColor = [UIColor redColor].CGColor;
    }
   else
   {
        _check=true;
        _ball.layer.backgroundColor = [UIColor blueColor].CGColor;
   }
}
@end
