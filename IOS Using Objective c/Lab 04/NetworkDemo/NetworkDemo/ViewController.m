//
//  ViewController.m
//  NetworkDemo
//
//  Created by JETS Mobile Lab - 9 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)syncAction:(UIButton *)sender;
- (IBAction)asyncAction:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController
{
    NSMutableData *dataReceived;
    NSURL *url , *urlJest;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //url     = [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us&guccounter=1"];
    url = [NSURL URLWithString:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?nae=yourName&phone=yourPhone&fbclid=IwAR0CPEfxNP_6Fk7O1bgXFLhDwbEXOLVYoF56FX6wKkSJAVkytuixfBAcArs"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)syncAction:(UIButton *)sender
{
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_textView setText:str];
}

- (IBAction)asyncAction:(UIButton *)sender
{
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
    // url of yahoo.com
    //NSString *str= [[NSString alloc] initWithData:dataReceived encoding:NSUTF8StringEncoding];
    // for hit webservice
    NSDictionary *dict =[NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    NSString *str=[dict objectForKey:@"status"];
    [_textView setText:str];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("Error Loading\n");
}
@end
