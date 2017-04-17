//
//  SecondView.m
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()

// 第一个白色背景
@property (nonatomic, weak)UIView * whiteBgView1;
// 第二个白色背景
@property (nonatomic, weak)UIView * whiteBgView2;
// 第三个白色背景
@property (nonatomic, weak)UIView * whiteBgView3;
// 第一条分割线
@property (nonatomic, weak)UIView * line1;
// 第二条分割线
@property (nonatomic, weak)UIView * line2;
// 第三条分割线
@property (nonatomic, weak)UIView * line3;
// 基本信息
@property (nonatomic, weak)UILabel * basicTitle;
// 基本信息内容
@property (nonatomic, weak)UILabel * basicContent;
// 申请材料
@property (nonatomic, weak)UILabel * applyDataTitle;
// 申请材料内容
@property (nonatomic, weak)UILabel * applyDataContent;
// 贷款流程
@property (nonatomic, weak)UILabel * loanFlowTitle;
// 贷款流程内容
@property (nonatomic, weak)UILabel * loanFlowContent;


@end


@implementation SecondView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self createViews];
        [self setViewsContent];
        [self setViewsLayouts];
    }
    return self;
}


/**
 创建视图控件
 */
- (void)createViews{
    
    UIView * whiteBgView1       = [[UIView alloc] init];
    UIView * whiteBgView2       = [[UIView alloc] init];
    UIView * whiteBgView3       = [[UIView alloc] init];
    UIView * line1              = [[UIView alloc] init];
    UIView * line2              = [[UIView alloc] init];
    UIView * line3              = [[UIView alloc] init];
    UILabel * basicTitle        = [[UILabel alloc] init];
    UILabel * basicContent      = [[UILabel alloc] init];
    UILabel * applyDataTitle    = [[UILabel alloc] init];
    UILabel * applyDataContent  = [[UILabel alloc] init];
    UILabel * loanFlowTitle     = [[UILabel alloc] init];
    UILabel * loanFlowContent   = [[UILabel alloc] init];
    UIButton * noticeButton     = [[UIButton alloc] init];
    
    self.whiteBgView1       = whiteBgView1;
    self.whiteBgView2       = whiteBgView2;
    self.whiteBgView3       = whiteBgView3;
    self.line1              = line1;
    self.line2              = line2;
    self.line3              = line3;
    self.basicTitle         = basicTitle;
    self.basicContent       = basicContent;
    self.applyDataTitle     = applyDataTitle;
    self.applyDataContent   = applyDataContent;
    self.loanFlowTitle      = loanFlowTitle;
    self.loanFlowContent    = loanFlowContent;
    self.noticeButton       = noticeButton;
    
    [self addSubview:whiteBgView1];
    [self addSubview:whiteBgView2];
    [self addSubview:whiteBgView3];
    [whiteBgView1 addSubview:line1];
    [whiteBgView2 addSubview:line2];
    [whiteBgView3 addSubview:line3];
    [whiteBgView1 addSubview:basicTitle];
    [whiteBgView2 addSubview:applyDataTitle];
    [whiteBgView3 addSubview:loanFlowTitle];
    [whiteBgView1 addSubview:basicContent];
    [whiteBgView2 addSubview:applyDataContent];
    [whiteBgView3 addSubview:loanFlowContent];
    [self addSubview:noticeButton];
}


/**
 设置控件内容
 */
- (void)setViewsContent{
    
    self.backgroundColor = RGAB(234, 235, 236, 1);
    self.whiteBgView1.backgroundColor = [UIColor whiteColor];
    self.whiteBgView2.backgroundColor = [UIColor whiteColor];
    self.whiteBgView3.backgroundColor = [UIColor whiteColor];
    
    self.line1.backgroundColor = RGAB(228, 228, 230, 1);
    self.line2.backgroundColor = RGAB(228, 228, 230, 1);
    self.line3.backgroundColor = RGAB(228, 228, 230, 1);
    
    self.basicTitle.textColor       = RGAB(54, 56, 54, 1);
    self.applyDataTitle.textColor   = RGAB(54, 56, 54, 1);
    self.loanFlowTitle.textColor    = RGAB(54, 56, 54, 1);
    self.basicContent.textColor     = RGAB(101, 102, 103, 1);
    self.applyDataContent.textColor = RGAB(101, 102, 103, 1);
    self.loanFlowContent.textColor  = RGAB(101, 102, 103, 1);
    
    [self.noticeButton setTitleColor:RGAB(134, 135, 136, 1) forState:UIControlStateNormal];
    
    self.basicTitle.font        = [UIFont systemFontOfSize:14 * SCALE];
    self.applyDataTitle.font    = [UIFont systemFontOfSize:14 * SCALE];
    self.loanFlowTitle.font     = [UIFont systemFontOfSize:14 * SCALE];
    self.basicContent.font      = [UIFont systemFontOfSize:12 * SCALE];
    self.applyDataContent.font  = [UIFont systemFontOfSize:12 * SCALE];
    self.loanFlowContent.font   = [UIFont systemFontOfSize:12 * SCALE];
    
    self.noticeButton.titleLabel.font = [UIFont systemFontOfSize:12 * SCALE];
    
    self.basicContent.numberOfLines     = 0;
    self.applyDataContent.numberOfLines = 0;
    self.loanFlowContent.numberOfLines  = 0;
    
    [self.noticeButton setImage:[UIImage imageNamed:@"product_detail_pull_down"] forState:UIControlStateNormal];
    
    [self.noticeButton setTitle:@"向下滑动，查看简介" forState:UIControlStateNormal];
    
    self.basicTitle.text     = @"商品描述";
    self.applyDataTitle.text = @"商品描述";
    self.loanFlowTitle.text  = @"商品描述";
    
    NSString * tempStr1 = @"1、产品参数：一件宝贝的参数是让顾客更加了解产品的地方，制作因简单易懂，不要太复杂。\n2、产品材质：这一般在产品参数里显示，也可以放一张把宝贝高、宽或其他数据描述的图片。宝贝和简单材质介绍因在一起做对比。\n3、产品卖点：介绍宝贝卖点（例：爱上宝贝的N个理由、）\n4、产品细节：宝贝做工，是某某羊皮，哪里进口材料加工，什么材质制作的。\n5、产品展示：产品各个角度照片";
    
    NSString * tempStr2 = @"1、产品参数：一件宝贝的参数是让顾客更加了解产品的地方，制作因简单易懂，不要太复杂。\n2、产品材质：这一般在产品参数里显示，也可以放一张把宝贝高、宽或其他数据描述的图片。宝贝和简单材质介绍因在一起做对比。\n3、产品卖点：介绍宝贝卖点（例：爱上宝贝的N个理由、）\n4、产品细节：宝贝做工，是某某羊皮，哪里进口材料加工，什么材质制作的。\n5、产品展示：产品各个角度照片";
    
    NSString * tempStr3 = @"1、产品参数：一件宝贝的参数是让顾客更加了解产品的地方，制作因简单易懂，不要太复杂。\n2、产品材质：这一般在产品参数里显示，也可以放一张把宝贝高、宽或其他数据描述的图片。宝贝和简单材质介绍因在一起做对比。\n3、产品卖点：介绍宝贝卖点（例：爱上宝贝的N个理由、）\n4、产品细节：宝贝做工，是某某羊皮，哪里进口材料加工，什么材质制作的。\n5、产品展示：产品各个角度照片";
    
    
    NSMutableParagraphStyle * paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineSpacing = 8;
    
    
    NSMutableAttributedString * attri1 = [[NSMutableAttributedString alloc] initWithString:tempStr1 attributes:@{NSParagraphStyleAttributeName : paragraph}];
    NSMutableAttributedString * attri2 = [[NSMutableAttributedString alloc] initWithString:tempStr2 attributes:@{NSParagraphStyleAttributeName : paragraph}];
    NSMutableAttributedString * attri3 = [[NSMutableAttributedString alloc] initWithString:tempStr3 attributes:@{NSParagraphStyleAttributeName : paragraph}];
    
    self.basicContent.attributedText = attri1;
    self.applyDataContent.attributedText = attri2;
    self.loanFlowContent.attributedText = attri3;
}


/**
 设置控件的约束
 */
- (void)setViewsLayouts{
    
    // 第一个背景
    [self.whiteBgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.right.equalTo(self);
    }];
    // 基本信息标题
    [self.basicTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.whiteBgView1).offset(16 * SCALE);
        make.centerY.equalTo(self.whiteBgView1.mas_top).offset(19.5 * SCALE);
    }];
    // 第一条分割线
    [self.line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.height.mas_equalTo(0.5);
        make.top.equalTo(self.whiteBgView1).offset(39 * SCALE);
    }];
    // 基本信息内容
    [self.basicContent mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.whiteBgView1).offset(16 * SCALE);
        make.top.equalTo(self.line1).offset(11 * SCALE);
        make.right.equalTo(self.whiteBgView1).offset(-16 * SCALE);
        make.bottom.equalTo(self.whiteBgView1).offset(-11 * SCALE);
    }];
    // 第二个背景
    [self.whiteBgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.top.equalTo(self.whiteBgView1.mas_bottom).offset(5 * SCALE);
    }];
    // 申请材料标题
    [self.applyDataTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.whiteBgView2).offset(16 * SCALE);
        make.centerY.equalTo(self.whiteBgView2.mas_top).offset(19.5 * SCALE);
    }];
    // 第条分割线
    [self.line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.height.mas_equalTo(0.5);
        make.top.equalTo(self.whiteBgView2).offset(39 * SCALE);
    }];
    // 申请林材料内容
    [self.applyDataContent mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.whiteBgView2).offset(16 * SCALE);
        make.top.equalTo(self.line2).offset(11 * SCALE);
        make.right.equalTo(self.whiteBgView2).offset(-16 * SCALE);
        make.bottom.equalTo(self.whiteBgView2).offset(-11 * SCALE);
    }];
    // 第三个背景
    [self.whiteBgView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.top.equalTo(self.whiteBgView2.mas_bottom).offset(5 * SCALE);
        make.bottom.mas_lessThanOrEqualTo(self);
    }];
    
    // 申请材料标题
    [self.loanFlowTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.whiteBgView3).offset(16 * SCALE);
        make.centerY.equalTo(self.whiteBgView3.mas_top).offset(19.5 * SCALE);
    }];
    // 第条分割线
    [self.line3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.height.mas_equalTo(0.5);
        make.top.equalTo(self.whiteBgView3).offset(39 * SCALE);
    }];
    // 申请林材料内容
    [self.loanFlowContent mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.whiteBgView3).offset(16 * SCALE);
        make.top.equalTo(self.line3).offset(11 * SCALE);
        make.right.equalTo(self.whiteBgView3).offset(-16 * SCALE);
        make.bottom.equalTo(self.whiteBgView3).offset(-11 * SCALE);
    }];
    
    [self.noticeButton sizeToFit];
    self.noticeButton.center = CGPointMake(SCREEN_WIDTH * 0.5, -20);
}


@end

