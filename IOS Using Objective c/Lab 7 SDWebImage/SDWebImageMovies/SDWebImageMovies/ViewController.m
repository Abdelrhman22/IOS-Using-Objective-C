#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableData * dataRecieve;
    NSMutableArray *imagesArray; // this array will contains URLs of images
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imagesArray = [NSMutableArray new];
    NSString *imagesURL = @"https://api.androidhive.info/json/movies.json"; // url of images
    NSURL *URL =[NSURL URLWithString:imagesURL];
    NSURLRequest * request = [NSURLRequest requestWithURL:URL];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

-(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    dataRecieve = [NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [dataRecieve appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSArray *dictionary = [NSJSONSerialization JSONObjectWithData:dataRecieve options:NSJSONReadingAllowFragments error:nil]; // get Json
    // for each JsonObject get it's image
    for(NSDictionary *item in dictionary){
        NSString *imageURL = [item objectForKey:@"image"];
        [imagesArray addObject:imageURL]; // save image url in imagesArray
    }
    _imageCollectionView.delegate = self ;
    _imageCollectionView.dataSource = self;
    
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [imagesArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImageView * movieImage=[cell viewWithTag:1];
    [movieImage sd_setImageWithURL:[NSURL URLWithString:[imagesArray objectAtIndex:indexPath.row]]
               placeholderImage:[UIImage imageNamed:@"placeholder.jpg"]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
