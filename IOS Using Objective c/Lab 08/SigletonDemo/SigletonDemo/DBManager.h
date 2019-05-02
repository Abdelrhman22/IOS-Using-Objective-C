#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBManager : NSObject

+(int) getCount;
+(DBManager*) sharedInstance ;
@end

NS_ASSUME_NONNULL_END
