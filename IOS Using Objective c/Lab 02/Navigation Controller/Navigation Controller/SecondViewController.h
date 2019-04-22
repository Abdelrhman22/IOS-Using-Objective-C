
#import <UIKit/UIKit.h>
#import "ClearTextProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property NSString *str;
@property id<ClearTextProtocol> firstView;
@end

NS_ASSUME_NONNULL_END
