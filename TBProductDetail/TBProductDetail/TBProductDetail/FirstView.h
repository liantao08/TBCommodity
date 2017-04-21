//
//  FirstView.h
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FirstViewDelegate <NSObject>

// 返回上一级控制器
- (void)backVC;
// 点击购买按钮
- (void)clickedApplyButton;

@end

@interface FirstView : UIView

@property (nonatomic, weak)id <FirstViewDelegate>delegate;

@end
