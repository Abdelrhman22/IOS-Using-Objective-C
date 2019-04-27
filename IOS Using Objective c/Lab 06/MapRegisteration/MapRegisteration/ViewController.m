//
//  ViewController.m
//  MapRegisteration
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 Esraa And Passant. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "myAnnotation.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *longitude;
- (IBAction)gesture:(id)sender;
- (IBAction)btnRegister:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *imageLabel;

- (IBAction)btnLogin:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController
{
     NSUserDefaults * userDefaults;
     NSString *imageURL;
     NSArray *imagesArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    imagesArray = @[@"a.jpg",@"b.jpg",@"c.png"];
    imageURL=@"";
    // Do any additional setup after loading the view, typically from a nib.
    _map.delegate=self;
    _locationManager=[CLLocationManager new];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDelegate:self];
    [_locationManager startUpdatingLocation];
    [_locationManager requestAlwaysAuthorization];
    userDefaults=[NSUserDefaults standardUserDefaults];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("regionWillChangeAnimated\n");
}
- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("regionDidChangeAnimated\n");
}
// didUpdateLocations used when user update his Location
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation * location=[CLLocation new];
    printf("updated\n");
}
- (IBAction)gesture:(id)sender {
    CGPoint touchPoint=[sender locationInView:self.map];
    CLLocationCoordinate2D touclLocation=[_map convertPoint:touchPoint toCoordinateFromView:self.map];
    myAnnotation * annotation = [myAnnotation new];
    annotation.coordinate=touclLocation;
    annotation.title=@"Title";
    annotation.subtitle=@"Subtitle";
     [_map addAnnotation:annotation];
}

- (IBAction)btnRegister:(UIButton *)sender {
    NSString *namestr=[_nameTF text];
    NSString *phonestr=[_phoneTF text];
    NSString *agesrt=[_ageTF text];
    NSString *longitudestr=[_longitude text];
    NSString *latitudestr=[_latitude text] ;
    NSString *url=[_imageLabel text];
    [userDefaults  setObject:namestr forKey:@"name"];
    [userDefaults  setObject:phonestr forKey:@"phone"];
    [userDefaults  setObject:agesrt forKey:@"age"];
    [userDefaults  setObject:url  forKey:@"image"];
    [userDefaults  setObject:longitudestr forKey:@"longitude"];
    [userDefaults  setObject:latitudestr  forKey:@"latitude"];
    printf("Done\n");
}

- (IBAction)btnLogin:(UIButton *)sender
{
    LoginViewController *loginVC=[self.storyboard instantiateViewControllerWithIdentifier:@"login"];
    [loginVC setUserData:userDefaults];
    [loginVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    
    [self presentViewController:loginVC animated:YES completion:nil];
}
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    NSNumber *lat = [NSNumber numberWithDouble:view.annotation.coordinate.latitude];
    _latitude.text=[lat stringValue];//convert from double to NSString
    
    NSNumber *longi=[NSNumber numberWithDouble:view.annotation.coordinate.longitude];
    _longitude.text=[longi stringValue];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    UIImageView *profileImage = [cell viewWithTag:1];
    profileImage.image=[UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [imagesArray count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 85;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    imageURL=[imagesArray objectAtIndex:indexPath.row];
    _imageLabel.text=imageURL;
}
@end



