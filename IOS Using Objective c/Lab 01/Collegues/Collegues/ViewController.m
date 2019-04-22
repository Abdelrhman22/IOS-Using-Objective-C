
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
static NSMutableArray *names;
NSUInteger counter=0;
- (void)viewDidLoad
{
    [super viewDidLoad];
    names=[NSMutableArray arrayWithObjects:@"1 Abdo",@"2 Arafa",@"3 Ahmed",@"4 Mohsen",@"5 Rady" ,nil];
    _name.text=[names objectAtIndex:counter];
}

- (IBAction)previousClicked:(UIButton *)sender
{
   if(counter>0)
   {
       counter--;
   }
    else
    {
        counter=[names count]-1;
    }
    _name.text=[names objectAtIndex:counter];
}
- (IBAction)nextClicked:(UIButton *)sender
{
    if(counter==[names count]-1)
    {
        counter=0;
    }
    else
    {
        counter++;
    }
    _name.text=[names objectAtIndex:counter];
}
@end
