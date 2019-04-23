//
//  ViewController.m
//  RegisterationUsingWebService
//
//  Created by JETS Mobile Lab - 9 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)loginClicked:(UIButton *)sender;

@end

@implementation ViewController
{
     NSMutableData *dataReceived;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *rec =[[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                                             action:@selector(next)];
    rec.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:rec];

}


- (IBAction)loginClicked:(UIButton *)sender {
    printf(" Name %s",[_username.text UTF8String]);
    printf("Phone %s",[_password.text UTF8String]);
    NSString *str=@"http://jets.iti.gov.eg/FriendsApp/services/user/register?nae=yourName&phone=yourPhone&fbclid=IwAR0CPEfxNP_6Fk7O1bgXFLhDwbEXOLVYoF56FX6wKkSJAVkytuixfBAcArs";
    str=[str stringByReplacingOccurrencesOfString:@"yourName" withString:_username.text];
    str=[str stringByReplacingOccurrencesOfString:@"yourPhone" withString:_password.text];
    NSURL *url= [NSURL URLWithString:str];
    //*********************************************
    NSURLRequest * request = [NSURLRequest requestWithURL: url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(nonnull NSURLResponse *)response
{
    printf("didReceiveResponse\n");
    dataReceived=[NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    printf("didReceiveData\n");
    [dataReceived appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSDictionary *dict =[NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    NSString *str=[dict objectForKey:@"status"];
    printf("%s",[str UTF8String]);
    if([str isEqualToString:@"FAILING"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wait" message:@"Faild To Register E-mail" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Try Again", nil];
        [alert show];
    }
    else // is str Sucess
    {
        [self next];
    }
    
}
-(void) next
{
    printf("Swipe\n");
    LoginViewController * login = [self.storyboard instantiateViewControllerWithIdentifier:@"login"];
    [login setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:login animated:YES completion:nil];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        _username.text=@"";
        _password.text=@"";
    }
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("Error Loading\n");
}
@end
