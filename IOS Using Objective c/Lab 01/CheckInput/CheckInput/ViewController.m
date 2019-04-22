#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)checkInput:(UIButton *)sender
{
    NSString * input=[NSString new];
    input=_inputlable.text;
    NSNumberFormatter *formater = [NSNumberFormatter new];
    [formater setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * number=[formater numberFromString:input];
    if(!number)
        printf("Yes it is String\n");
    else
          printf("Not pure String\n");
}

- (IBAction)checkNumber:(UIButton *)sender
{
    NSString * input=[NSString new];
    input=_inputlable.text;
    NSNumberFormatter *formater = [NSNumberFormatter new];
    [formater setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * number=[formater numberFromString:input];
    if(number)
        printf("Yes it is Number\n");
    else
        printf("Not Number\n");
}
@end
