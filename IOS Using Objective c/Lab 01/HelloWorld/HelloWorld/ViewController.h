
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)changeText:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *edtName;
@property (weak, nonatomic) IBOutlet UILabel *myLabel2;

- (IBAction)getValue:(UIButton *)sender;

@end

