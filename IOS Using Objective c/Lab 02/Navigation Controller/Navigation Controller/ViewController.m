

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)gotoSecondView:(UIButton *)sender
{
    SecondViewController * secondVc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    secondVc.firstView=self;
    [self.navigationController pushViewController:secondVc animated:NO];
    NSString * str=_nameText.text;
    secondVc.str=str;
}
-(void) clearTxt
{
    _nameText.text=@"";
}
@end
