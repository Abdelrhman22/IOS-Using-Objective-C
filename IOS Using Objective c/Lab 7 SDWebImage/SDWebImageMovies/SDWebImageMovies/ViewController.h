//
//  ViewController.h
//  SDWebImageMovies
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 Esraa And Passant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<NSURLConnectionDelegate , NSURLConnectionDataDelegate, UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *imageCollectionView;

@end

