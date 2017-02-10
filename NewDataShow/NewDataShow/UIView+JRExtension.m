//
//  UIView+JRExtension.m
//  SunNews
//
//  Created by Justin on 2016/12/22.
//  Copyright © 2016年 jerei. All rights reserved.
//

#import "UIView+JRExtension.h"

@implementation UIView (JRExtension)
- (CGSize)jr_size
{
    return self.frame.size;
}

- (void)setJr_size:(CGSize)jr_size
{
    CGRect frame = self.frame;
    frame.size = jr_size;
    self.frame = frame;
}

- (CGFloat)jr_width
{
    return self.frame.size.width;
}

- (CGFloat)jr_height
{
    return self.frame.size.height;
}

- (void)setJr_width:(CGFloat)jr_width
{
    CGRect frame = self.frame;
    frame.size.width = jr_width;
    self.frame = frame;
}

- (void)setJr_height:(CGFloat)jr_height
{
    CGRect frame = self.frame;
    frame.size.height = jr_height;
    self.frame = frame;
}

- (CGFloat)jr_x
{
    return self.frame.origin.x;
}

- (void)setJr_x:(CGFloat)jr_x
{
    CGRect frame = self.frame;
    frame.origin.x = jr_x;
    self.frame = frame;
}

- (CGFloat)jr_y
{
    return self.frame.origin.y;
}

- (void)setJr_y:(CGFloat)jr_y
{
    CGRect frame = self.frame;
    frame.origin.y = jr_y;
    self.frame = frame;
}

- (CGFloat)jr_centerX
{
    return self.center.x;
}

- (void)setJr_centerX:(CGFloat)jr_centerX
{
    CGPoint center = self.center;
    center.x = jr_centerX;
    self.center = center;
}

- (CGFloat)jr_centerY
{
    return self.center.y;
}

- (void)setJr_centerY:(CGFloat)jr_centerY
{
    CGPoint center = self.center;
    center.y = jr_centerY;
    self.center = center;
}

- (CGFloat)jr_right
{
    //    return self.jr_x + self.jr_width;
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)jr_bottom
{
    //    return self.jr_y + self.jr_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setJr_right:(CGFloat)jr_right
{
    self.jr_x = jr_right - self.jr_width;
}

- (void)setJr_bottom:(CGFloat)jr_bottom
{
    self.jr_y = jr_bottom - self.jr_height;
}

+ (instancetype)viewFromXib
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}

- (BOOL)intersectWithView:(UIView *)view
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:window];
    CGRect viewRect = [view convertRect:view.bounds toView:window];
    return CGRectIntersectsRect(selfRect, viewRect);
}
@end
