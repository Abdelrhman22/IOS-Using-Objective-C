
#import <Foundation/Foundation.h>
#import "Friend.h"


@interface FreidnManager : NSObject
-(void) addFriend:(Friend*) friend;
-(NSMutableArray*) getAllFriends;
@end


