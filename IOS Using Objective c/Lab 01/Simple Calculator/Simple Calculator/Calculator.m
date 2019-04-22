
#import "Calculator.h"

@implementation Calculator
-(int) add:(int) num1 :(int) num2
{
    int sum=num1+num2;
    return sum;
}
-(int) sub:(int) num1 :(int) num2
{
    int subtract=num1-num2;
    return subtract;
}
-(int) mul:(int) num1 :(int) num2
{
    int multi=num1*num2;
    return multi;
}
-(int) div:(int) num1 :(int) num2
{
    double division=num1/num2;
    return division;
}
@end
