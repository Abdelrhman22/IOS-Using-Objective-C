
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *edtnum1;
@property (weak, nonatomic) IBOutlet UITextField *edtnum2;
@property (weak, nonatomic) IBOutlet UILabel *txtResult;
- (IBAction)btnPlus:(UIButton *)sender;
- (IBAction)btnMinus:(id)sender;
- (IBAction)btnMultiply:(UIButton *)sender;
- (IBAction)btnDivision:(UIButton *)sender;
- (IBAction)btnEquals:(UIButton *)sender;

@end

