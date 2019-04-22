
#import "Friend.h"

@implementation Friend
-(void) insertCollegueWithName:(NSString*) name andPhone:(NSString*) phone andAge:(int) age andEmail:(NSString*) email andAddress:(NSString*) address
{
    self.name=name;
    self.phone=phone;
    self.age=age;
    self.email=email;
    self.address=address;
}
@end
