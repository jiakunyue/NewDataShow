//
//  UIView+JRExtension.h
//  SunNews
//
//  Created by Justin on 2016/12/22.
//  Copyright © 2016年 jerei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JRExtension)
@property (nonatomic, assign) CGSize jr_size;
@property (nonatomic, assign) CGFloat jr_width;
@property (nonatomic, assign) CGFloat jr_height;
@property (nonatomic, assign) CGFloat jr_x;
@property (nonatomic, assign) CGFloat jr_y;
@property (nonatomic, assign) CGFloat jr_centerX;
@property (nonatomic, assign) CGFloat jr_centerY;

@property (nonatomic, assign) CGFloat jr_right;
@property (nonatomic, assign) CGFloat jr_bottom;

+ (instancetype)viewFromXib;

- (BOOL)intersectWithView:(UIView *)view;
@end
