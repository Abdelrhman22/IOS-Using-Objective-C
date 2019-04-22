
#import <Foundation/Foundation.h>

@interface Friend : NSObject
@property NSString *name;
@property NSString *phone;
@property int  age;
@property NSString *email;
@property NSString *address;
-(void) insertCollegueWithName:(NSString*) name andPhone:(NSString*) phone andAge:(int) age andEmail:(NSString*) email andAddress:(NSString*) address;
@end

