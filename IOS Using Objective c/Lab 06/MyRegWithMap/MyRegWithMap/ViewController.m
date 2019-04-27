//
//  ViewController.m
//  MyRegWithMap
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSUserDefaults *defaults;
    NSString *picURL;
    NSArray *imagesArray;
}
@property CLLocationCoordinate2D touchCoordinate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imagesArray=@[@"apple.png",@"lemon-2.png",@"strawberry.png"];
    picURL=@"a";
    defaults=[NSUserDefaults standardUserDefaults];
    _locationManager=[CLLocationManager new];
    [_myMapView setDelegate:self];
    [_locationManager setDelegate:self];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager startUpdatingLocation];
    [_locationManager requestAlwaysAuthorization];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)regBtn:(UIButton *)sender {
    NSString *name=[_nameTF text];
    NSString *phone=[_phoneTF text];
    NSString *age=[_ageTF text];
    
    [defaults setObject:name forKey:@"name"];
    [defaults setObject:phone forKey:@"phone"];
    [defaults setObject:age forKey:@"age"];
    [defaults setObject:_latLabel.text forKey:@"lat"];
    [defaults setObject:_lngLabel.text forKey:@"lng"];
    [defaults setObject:picURL forKey:@"pic"];
}

- (IBAction)tabGest:(UITapGestureRecognizer *)sender {
    CGPoint touchPoint= [sender locationInView:self.myMapView];
    _touchCoordinate=[_myMapView convertPoint:touchPoint toCoordinateFromView:self.myMapView];
    NSNumber *lat=[[NSNumber alloc]initWithDouble:_touchCoordinate.latitude];
    NSNumber *lng=[[NSNumber alloc]initWithDouble:_touchCoordinate.longitude];
    [_latLabel setText:[lat stringValue]];
    [_lngLabel setText:[lng stringValue]];
    printf("inside Gesture\n");
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation *location = [locations lastObject];
    NSNumber *lat=[[NSNumber alloc]initWithDouble:location.coordinate.latitude];
    NSNumber *lng=[[NSNumber alloc]initWithDouble:location.coordinate.longitude];
    
    [_latLabel setText:[lat stringValue]];
    [_lngLabel setText:[lng stringValue]];	
}
- (IBAction)loginBtn:(UIButton *)sender {
    NSString *phoneCheck=[_loginPhoneTF text];
    NSString *returnedPhone=[defaults objectForKey:@"phone"];
    
    if([phoneCheck isEqualToString:returnedPhone]){
        NSLog(@"name:%@",[defaults objectForKey:@"name"]);
        NSLog(@"phone:%@",[defaults objectForKey:@"phone"]);
        NSLog(@"lat:%@",[defaults objectForKey:@"lat"]);
        NSLog(@"lng:%@",[defaults objectForKey:@"lng"]);
        NSLog(@"picURL:%@",[defaults objectForKey:@"pic"]);
    }else{
        printf("not valid!\n");
    }
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    UIImageView *img= [cell viewWithTag:1];
    img.image=[UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [imagesArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    picURL = [imagesArray objectAtIndex:indexPath.row];
}



@end
