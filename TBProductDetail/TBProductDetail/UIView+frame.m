//
//  UIView+frame.m
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

-(void)setX:(CGFloat)X{
    
    CGRect rect = self.frame;
    rect.origin.x = X;
    self.frame = rect;
}

-(void)setY:(CGFloat)Y{
    
    CGRect rect = self.frame;
    rect.origin.y = Y;
    self.frame = rect;
}

-(void)setWidth:(CGFloat)Width{
    
    CGRect rect = self.frame;
    rect.size.width = Width;
    self.frame = rect;
}

-(void)setHeight:(CGFloat)Height{
    
    CGRect rect = self.frame;
    rect.size.height = Height;
    self.frame = rect;
}

-(void)setSize:(CGSize)Size{
    
    CGRect rect = self.frame;
    rect.size = Size;
    self.frame = rect;
}

-(CGFloat)X{
    return self.frame.origin.x;
}

-(CGFloat)Y{
    return self.frame.origin.y;
}

-(CGFloat)Width{
    return self.frame.size.width;
}

-(CGFloat)Height{
    return self.frame.size.height;
}

-(CGSize)Size{
    return self.frame.size;
}


@end
