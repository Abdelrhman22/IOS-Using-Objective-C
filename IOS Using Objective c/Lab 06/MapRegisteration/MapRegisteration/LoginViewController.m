#import "LoginViewController.h"
#import "ViewController.h"
@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phone;
- (IBAction)ButtonLogin:(UIButton *)sender;
- (IBAction)ButtonRegister:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *status;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonLogin:(UIButton *)sender {
    NSString  *userPhone  =[_phone text];
    NSString  *savedPhone =[_userData objectForKey:@"phone"];
     if( [userPhone isEqualToString:savedPhone])
     {
         _status.text=@"Sucess";
     }
    else
    {
        _status.text=@"LoginFailed";
    }
}

- (IBAction)ButtonRegister:(UIButton *)sender {
    ViewController *registerVC=[self.storyboard instantiateViewControllerWithIdentifier:@"register"];
    
    [registerVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    
    [self presentViewController:registerVC animated:YES completion:nil
     ];
}
@end
