//
//  PrefixHeader.h
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#ifndef PrefixHeader_h
#define PrefixHeader_h

#import "Masonry.h"
#import "UIView+frame.h"

#endif /* PrefixHeader_h */

//适配比例值
#define SCALE [UIScreen mainScreen].bounds.size.width / 375.0

// rgb颜色
#define RGAB(R, G, B, A)  [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

// 屏宽和高
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
