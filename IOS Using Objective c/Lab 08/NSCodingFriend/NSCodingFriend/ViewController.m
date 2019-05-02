#import "ViewController.h"
#import "Friend.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *positionTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;
- (IBAction)saveButton:(UIButton *)sender;
- (IBAction)getButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end

@implementation ViewController
{
    NSUserDefaults *defaults;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)saveButton:(UIButton *)sender
{
    NSString *name = [_nameTF text];          // name
    NSString *position =[_positionTF text];   // position
    int age=[[_ageTF text] intValue];         // age
    Friend *friend = [Friend new];
    friend.name=name;
    friend.position=position;
    friend.age=age;
    NSData *data =[NSKeyedArchiver archivedDataWithRootObject:friend];
    defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:@"friendobject"];
    _nameTF.text=@"";
    _positionTF.text=@"";
    _ageTF.text=@"";
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Alert"
                                 message:@"Data Saved Successuly!"
                                 preferredStyle:UIAlertControllerStyleActionSheet];

    UIAlertAction* ok = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)getButton:(UIButton *)sender
{
    NSData *friendData = [defaults objectForKey:@"friendobject"];
    Friend *savedFriend=[NSKeyedUnarchiver unarchiveObjectWithData:friendData];
    //printf("%s\n",[[savedFriend name] UTF8String]);
    _nameLabel.text=[savedFriend name];
    _positionLabel.text=[savedFriend position];
    NSString *ageVal=[[NSNumber numberWithInt:[savedFriend age]] stringValue];
    _ageLabel.text = ageVal;
}
@end
