//
//  UIView+frame.h
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (frame)
/**
 *  快速获取和设置控件的x值
 */
@property(nonatomic,assign)CGFloat X;
/**
 *  快速获取和设置控件的y值
 */
@property(nonatomic,assign)CGFloat Y;
/**
 *  快速获取和设置控件的width值
 */
@property(nonatomic,assign)CGFloat Width;
/**
 *  快速获取和设置控件的height值
 */
@property(nonatomic,assign)CGFloat Height;
/**
 *  快速获取和设置控件的size值
 */
@property(nonatomic,assign)CGSize Size;


@end
