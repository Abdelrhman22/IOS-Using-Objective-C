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
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)syncAction:(UIButton *)sender
{
     NSURL *url = [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us&guccounter=1"];
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_textView setText:str];
}

- (IBAction)asyncAction:(UIButton *)sender
{
    NSURL *url = [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us&guccounter=1"];
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
    NSString *str= [[NSString alloc] initWithData:dataReceived encoding:NSUTF8StringEncoding];
    [_textView setText:str];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("Error Loading\n");
}
@end
