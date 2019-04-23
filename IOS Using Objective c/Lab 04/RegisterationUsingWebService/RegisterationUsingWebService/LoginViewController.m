

#import "LoginViewController.h"

@interface LoginViewController ()
- (IBAction)back:(UIButton *)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)back:(UIButton *)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
