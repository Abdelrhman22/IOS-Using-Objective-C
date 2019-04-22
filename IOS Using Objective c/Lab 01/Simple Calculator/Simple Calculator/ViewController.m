
#import "ViewController.h"
#import "Calculator.h"
@interface ViewController ()

@end
Calculator * cal;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cal=[Calculator new];
}

- (IBAction)btnPlus:(UIButton *)sender
{
     NSInteger num1 = [_edtnum1.text integerValue];
     NSInteger num2 = [_edtnum2.text integerValue];
     int res = [cal add:num1 :num2];
    NSInteger newval= res;
    NSString * val=[NSString stringWithFormat:@"%ld",newval];
    _txtResult.text= val;
}

- (IBAction)btnMinus:(id)sender
{
    NSInteger num1 = [_edtnum1.text integerValue];
    NSInteger num2 = [_edtnum2.text integerValue];
    int res = [cal sub:num1 :num2];
    NSInteger newval= res;
    NSString * val=[NSString stringWithFormat:@"%ld",newval];
    _txtResult.text= val;
}

- (IBAction)btnMultiply:(UIButton *)sender
{
    NSInteger num1 = [_edtnum1.text integerValue];
    NSInteger num2 = [_edtnum2.text integerValue];
    int res = [cal mul:num1 :num2];
    NSInteger newval= res;
    NSString * val=[NSString stringWithFormat:@"%ld",newval];
    _txtResult.text= val;
}
- (IBAction)btnDivision:(UIButton *)sender
{
    NSInteger num1 = [_edtnum1.text integerValue];
    NSInteger num2 = [_edtnum2.text integerValue];
    int res = [cal div:num1 :num2];
    NSInteger newval= res;
    NSString * val=[NSString stringWithFormat:@"%ld",newval];
    _txtResult.text= val;
}
- (IBAction)btnEquals:(UIButton *)sender
{
    
}
@end
