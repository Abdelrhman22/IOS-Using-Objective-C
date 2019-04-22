
#import "FreidnManager.h"

@implementation FreidnManager
static NSMutableArray* arr;
-(id) init
{
    if(self = [super init])
    {
        arr=[NSMutableArray new];
    }
    return self;
}
-(void) addFriend:(Friend*) friend
{
    [arr addObject:friend];
}
-(NSMutableArray*) getAllFriends
{
    return arr;
}


@end
