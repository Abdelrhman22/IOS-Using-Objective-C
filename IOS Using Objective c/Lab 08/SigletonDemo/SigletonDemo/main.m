
#import <Cocoa/Cocoa.h>
#import "DBManager.h"
int main(int argc, const char * argv[]) {
    DBManager *counter  = [DBManager sharedInstance];
    DBManager *counter2 = [DBManager sharedInstance];
    DBManager *counter3 = [DBManager sharedInstance];
    DBManager *counter4 = [DBManager sharedInstance];
    printf(" Counter %d\n",[DBManager getCount]);
    return 0;
}
