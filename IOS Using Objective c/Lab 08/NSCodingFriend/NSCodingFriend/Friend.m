
#import "Friend.h"

@implementation Friend
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_position forKey:@"position"];
    [aCoder encodeInt:_age forKey:@"age"];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self.name=[aDecoder decodeObjectForKey:@"name"];
    self.position=[aDecoder decodeObjectForKey:@"position"];
    self.age=[aDecoder decodeIntForKey:@"age"];
    return self;
}
@end
