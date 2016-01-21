//
//  SubImageView.h
//  Car Sub Image
//
//  Created by Hamish Knight on 20/01/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (UIImageViewSubImage)

/// Transforms a rect from image coordinates to view coordinates, when the UIViewContentModeScaleAspectFit content mode is used.
-(CGRect) rectForApsectFitImageRect:(CGRect)rect;

@end
