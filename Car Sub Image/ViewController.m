//
//  ViewController.m
//  Car Sub Image
//
//  Created by Hamish Knight on 20/01/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage* img = [UIImage imageNamed:@"car.png"];
    
    CGSize imageSize = img.size;
    
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = img;
    [self.view addSubview:imageView];
    
    CGSize imageViewSize = imageView.frame.size;
    
    CGFloat imgRatio = imageSize.width/imageSize.height; // The ratio of the image before scaling.
    CGFloat imgViewRatio = imageViewSize.width/imageViewSize.height; // The ratio of the image view
    
    CGFloat ratio = (imgRatio > imgViewRatio)? imageViewSize.width/imageSize.width:imageViewSize.height/imageSize.height; // The ratio of the image before scaling to after scaling.
    
    CGFloat yOffset = (imageViewSize.height-(imageSize.height*ratio))*0.5; // The y-offset of the image on-screen (as it gets centered)
    
    CGFloat xOffset = (imageViewSize.width-(imageSize.width*ratio))*0.5; // The x-offset of the image on-screen (as it gets centered)
    
    CGPoint subImgOrigin = {117.0*ratio, 142.0*ratio}; // The origin of the sub-image (relative to the origin of the image)
    CGSize subImageSize = {74.0*ratio, 74.0*ratio}; // The size of the sub-image
    
    // Your wheel view
    UIView* wheel = [[UIView alloc] initWithFrame:(CGRect){xOffset+subImgOrigin.x, yOffset+subImgOrigin.y, subImageSize.width, subImageSize.height}];
    wheel.backgroundColor = [UIColor redColor];
    [self.view addSubview:wheel];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
