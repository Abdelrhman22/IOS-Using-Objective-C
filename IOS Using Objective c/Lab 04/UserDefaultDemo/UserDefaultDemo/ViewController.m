
#import "ViewController.h"

@interface ViewController ()
- (IBAction)saveDefaults:(UIButton *)sender;
- (IBAction)getDefaults:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController
{
    NSUserDefaults * userDefaults;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    userDefaults = [NSUserDefaults standardUserDefaults];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)saveDefaults:(UIButton *)sender {
    NSString *str = [_myTextField text];
    [userDefaults setObject:str forKey:@"name"];
    [userDefaults synchronize];
}

- (IBAction)getDefaults:(UIButton *)sender {
    
    NSString *str =[userDefaults objectForKey:@"name"];
    [_myLabel setText:str];
}
@end
