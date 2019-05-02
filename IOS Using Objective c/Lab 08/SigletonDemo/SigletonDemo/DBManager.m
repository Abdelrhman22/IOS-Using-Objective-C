#import "DBManager.h"

@implementation DBManager
static int count = 0;

+(int) getCount
{
    return count;
}

-(id) init{
    
    if (self = [super init]) {
        count++;
    }
    return self;
    
}
+(DBManager*) sharedInstance
{
    static DBManager* sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate , ^{sharedInstance=[[DBManager alloc]init];});
    return sharedInstance;
}
@end
