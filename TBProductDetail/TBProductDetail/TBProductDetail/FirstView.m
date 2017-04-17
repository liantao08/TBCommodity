//
//  FirstView.m
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "FirstView.h"

@interface FirstView ()
// 头部视图
@property (nonatomic, weak)UIImageView * headImageView;
// 最高限额
@property (nonatomic, weak)UILabel * limitNum;
// 最高限额文字
@property (nonatomic, weak)UILabel * limitLabel;
// 最长期限
@property (nonatomic, weak)UILabel * timeNum;
// 最长期限文字
@property (nonatomic, weak)UILabel * timeLabel;
// 最底利率
@property (nonatomic, weak)UILabel * rateNum;
// 最底利率文字
@property (nonatomic, weak)UILabel * rateLabel;
// 申请条件背景View
@property (nonatomic, weak)UIView * applyBgView;
// 产品优势背景View
@property (nonatomic, weak)UIView * advantageBgView;
// 第一条线
@property (nonatomic, weak)UIView * line1;
// 第二条线
@property (nonatomic, weak)UIView * line2;
// 申请条件标题
@property (nonatomic, weak)UILabel * applyTitle;
// 申请条件内容
@property (nonatomic, weak)UILabel * applyContent;
// 产品优势标题
@property (nonatomic, weak)UILabel * advantageTitle;
// 产品优势内容
@property (nonatomic, weak)UILabel * advantageContent;
// 申请准入按钮
@property (nonatomic, weak)UIButton * applyButton;
// 小箭头
@property (nonatomic, weak)UIImageView * arrowImage;
// 提示标签
@property (nonatomic, weak)UIButton * noticeButton;

@end


@implementation FirstView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self createViews];
        [self setupViewsContents];
        [self setViewsLayouts];
    }
    
    return self;
}


/**
 创建视图
 */
- (void)createViews{
    
    UIImageView * headImageView = [[UIImageView alloc] init];
    UILabel * limitNum          = [[UILabel alloc] init];
    UILabel * limitLabel        = [[UILabel alloc] init];
    UILabel * timeNum           = [[UILabel alloc] init];
    UILabel * timeLabel         = [[UILabel alloc] init];
    UILabel * rateNum           = [[UILabel alloc] init];
    UILabel * rateLabel         = [[UILabel alloc] init];
    UIView * applyBgView        = [[UIView alloc] init];
    UIView * advantageBgView    = [[UIView alloc] init];
    UIView * line1              = [[UIView alloc] init];
    UIView * line2              = [[UIView alloc] init];
    UILabel * applyTitle        = [[UILabel alloc] init];
    UILabel * applyContent      = [[UILabel alloc] init];
    UILabel * advantageTitle    = [[UILabel alloc] init];
    UILabel * advantageContent  = [[UILabel alloc] init];
    UIButton * applyButton      = [[UIButton alloc] init];
    UIButton * noticeButton     = [[UIButton alloc] init];
    
    self.headImageView      = headImageView;
    self.limitNum           = limitNum;
    self.limitLabel         = limitLabel;
    self.timeNum            = timeNum;
    self.timeLabel          = timeLabel;
    self.rateNum            = rateNum;
    self.rateLabel          = rateLabel;
    self.applyBgView        = applyBgView;
    self.applyTitle         = applyTitle;
    self.applyContent       = applyContent;
    self.advantageBgView    = advantageBgView;
    self.line1              = line1;
    self.line2              = line2;
    self.advantageTitle     = advantageTitle;
    self.advantageContent   = advantageContent;
    self.applyButton        = applyButton;
    self.noticeButton       = noticeButton;
    
    [self addSubview:headImageView];
    [headImageView addSubview:limitNum];
    [headImageView addSubview:limitLabel];
    [headImageView addSubview:timeNum];
    [headImageView addSubview:timeLabel];
    [headImageView addSubview:rateNum];
    [headImageView addSubview:rateLabel];
    [self addSubview:applyBgView];
    [applyBgView addSubview:applyTitle];
    [applyTitle addSubview:applyContent];
    [applyBgView addSubview:line1];
    [self addSubview:advantageBgView];
    [advantageBgView addSubview:advantageTitle];
    [advantageBgView addSubview:advantageContent];
    [advantageBgView addSubview:line2];
    [self addSubview:applyButton];
    [self addSubview:noticeButton];
    
}


/**
 设置控件内容
 */
- (void)setupViewsContents{
    
    self.backgroundColor = RGAB(234, 235, 236, 1);
    self.applyBgView.backgroundColor     = [UIColor whiteColor];
    self.advantageBgView.backgroundColor = [UIColor whiteColor];
    self.applyButton.backgroundColor     = RGAB(255, 113, 40, 1);
    self.line1.backgroundColor           = RGAB(228, 228, 230, 1);
    self.line2.backgroundColor           = RGAB(228, 228, 230, 1);
    
    self.headImageView.backgroundColor = [UIColor orangeColor];
    [self.noticeButton setImage:[UIImage imageNamed:@"product_detail_pull_up"] forState:UIControlStateNormal];
    self.headImageView.userInteractionEnabled = YES;
    
    [self.applyButton addTarget:self.delegate action:@selector(payInto) forControlEvents:UIControlEventTouchUpInside];
    
    self.limitLabel.text        = @"金额";
    self.timeLabel.text         = @"期限";
    self.rateLabel.text         = @"个数";
    self.applyTitle.text        = @"商品描述";
    self.advantageTitle.text    = @"产品优势";
    
    [self.noticeButton setTitle:@"向上滑动，查看详情" forState:UIControlStateNormal];
    [self.applyButton setTitle:@"立即购买" forState:UIControlStateNormal];
    
    NSString * tempStr  = @"1、产品参数：一件宝贝的参数是让顾客更加了解产品的地方，制作因简单易懂，不要太复杂。\n2、产品材质：这一般在产品参数里显示，也可以放一张把宝贝高、宽或其他数据描述的图片。宝贝和简单材质介绍因在一起做对比。\n3、产品卖点：介绍宝贝卖点（例：爱上宝贝的N个理由、）\n4、产品细节：宝贝做工，是某某羊皮，哪里进口材料加工，什么材质制作的。\n5、产品展示：产品各个角度照片";
    
    NSString * tempStr1  = @"全程在线处理，方便快捷；\n免抵押担保，手续简单。";
    
    NSMutableParagraphStyle * paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineSpacing = 8;
    
    
    NSMutableAttributedString * attri = [[NSMutableAttributedString alloc] initWithString:tempStr attributes:@{NSParagraphStyleAttributeName : paragraph}];
    
    NSMutableAttributedString * attri1 = [[NSMutableAttributedString alloc] initWithString:tempStr1 attributes:@{NSParagraphStyleAttributeName : paragraph}];
    
    self.applyContent.attributedText = attri;
    self.advantageContent.attributedText = attri1;
    
    self.limitNum.textColor     = [UIColor blackColor];
    self.limitLabel.textColor   = [UIColor blackColor];
    self.timeNum.textColor      = [UIColor blackColor];
    self.timeLabel.textColor    = [UIColor blackColor];
    self.rateNum.textColor      = [UIColor blackColor];
    self.rateLabel.textColor    = [UIColor blackColor];
    
    self.applyTitle.textColor       = RGAB(54, 56, 54, 1);
    self.advantageTitle.textColor   = RGAB(54, 56, 54, 1);
    self.applyContent.textColor     = RGAB(101, 102, 103, 1);
    self.advantageContent.textColor = RGAB(101, 102, 103, 1);
    
    [self.noticeButton setTitleColor:RGAB(134, 135, 136, 1) forState:UIControlStateNormal];
    
    self.limitNum.font   = [UIFont systemFontOfSize:18 * SCALE];
    self.limitLabel.font = [UIFont systemFontOfSize:14 * SCALE];
    self.timeNum.font    = [UIFont systemFontOfSize:15 * SCALE];
    self.timeLabel.font  = [UIFont systemFontOfSize:12 * SCALE];
    self.rateNum.font    = [UIFont systemFontOfSize:15 * SCALE];
    self.rateLabel.font  = [UIFont systemFontOfSize:12 * SCALE];
    self.applyTitle.font        = [UIFont systemFontOfSize:14 * SCALE];
    self.applyContent.font      = [UIFont systemFontOfSize:12 * SCALE];
    self.advantageTitle.font    = [UIFont systemFontOfSize:14 * SCALE];
    self.advantageContent.font  = [UIFont systemFontOfSize:12 * SCALE];
    
    self.noticeButton.titleLabel.font = [UIFont systemFontOfSize:12 * SCALE];
    
    self.applyContent.numberOfLines     = 0;
    self.advantageContent.numberOfLines = 0;
    
    self.applyButton.layer.cornerRadius = 7;
}


/**
 设置控件约束
 */
- (void)setViewsLayouts{
    
    // 头部背景
    [self.headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.right.equalTo(self);
        make.height.mas_equalTo(185 * SCALE);
    }];
    // 产品融资额度数字
    [self.limitNum mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.headImageView);
        make.top.equalTo(self.headImageView).offset(40 * SCALE);
        make.height.mas_equalTo(18 * SCALE);
    }];
    // 产品融资额度
    [self.limitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.headImageView);
        make.top.equalTo(self.limitNum.mas_bottom).offset(17 * SCALE);
        make.height.mas_equalTo(14 * SCALE);
    }];
    // 融资期限
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.headImageView).offset(-SCREEN_WIDTH * 0.25);
        make.bottom.equalTo(self.headImageView).offset(-10 * SCALE);
        make.height.mas_equalTo(12 * SCALE);
    }];
    // 融资期限数字
    [self.timeNum mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.timeLabel);
        make.bottom.equalTo(self.timeLabel.mas_top).offset(-10 * SCALE);
        make.height.mas_equalTo(15 * SCALE);
    }];
    //融资利率
    [self.rateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.headImageView).offset(SCREEN_WIDTH * 0.25);
        make.bottom.equalTo(self.headImageView).offset(-10 * SCALE);
        make.height.mas_equalTo(12 * SCALE);
    }];
    // 融资利率数字
    [self.rateNum mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.rateLabel);
        make.bottom.equalTo(self.rateLabel.mas_top).offset(-10 * SCALE);
        make.height.mas_equalTo(15 * SCALE);
    }];
    
    // 申请条件背景
    [self.applyBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.top.equalTo(self.headImageView.mas_bottom).offset(5 * SCALE);
    }];
    // 申请条件标题
    [self.applyTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.applyBgView).offset(16 * SCALE);
        make.centerY.equalTo(self.applyBgView.mas_top).offset(19.5 * SCALE);
    }];
    // 分割线
    [self.line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self.applyBgView);
        make.top.equalTo(self.applyBgView).offset(39 * SCALE);
        make.height.mas_equalTo(0.5);
    }];
    // 申请内容
    [self.applyContent mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.applyBgView).offset(16 * SCALE);
        make.top.equalTo(self.line1).offset(11 * SCALE);
        make.right.equalTo(self.applyBgView).offset(-16 * SCALE);
        make.bottom.equalTo(self.applyBgView).offset(-11 * SCALE);
    }];
    // 产品优势
    [self.advantageBgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self);
        make.top.equalTo(self.applyBgView.mas_bottom).offset(5 * SCALE);
    }];
    // 产品优势标题
    [self.advantageTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.advantageBgView).offset(16 * SCALE);
        make.centerY.equalTo(self.advantageBgView.mas_top).offset(19.5 * SCALE);
    }];
    // 第二条线
    [self.line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.equalTo(self.advantageBgView);
        make.top.equalTo(self.advantageBgView).offset(39 * SCALE);
        make.height.mas_equalTo(0.5);
    }];
    // 产品优势内容
    [self.advantageContent mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.advantageBgView).offset(16 * SCALE);
        make.right.equalTo(self.advantageBgView).offset(-16 * SCALE);
        make.top.equalTo(self.line2).offset(11 * SCALE);
        make.bottom.equalTo(self.advantageBgView).offset(-11 * SCALE);
    }];
    // 申请按钮
    [self.applyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self);
        make.top.equalTo(self.advantageBgView.mas_bottom).offset(12 * SCALE);
        make.size.mas_equalTo(CGSizeMake(320 * SCALE, 44 * SCALE));
        make.bottom.mas_lessThanOrEqualTo(self).offset(-44 * SCALE);
    }];
    // 设置提示控件
    [self.noticeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(self).offset(-14 * SCALE);
        make.centerX.equalTo(self);
    }];
}


#pragma mark - 点击事件

// 返回上一级控制器
- (void)back{
    
    if ([self.delegate respondsToSelector:@selector(backVC)]) {
        
        [self.delegate backVC];
    }
}

/**
 立即购买
 */
- (void)payInto{
    
    if ([self.delegate respondsToSelector:@selector(clickedApplyButton)]) {
        
        [self.delegate clickedApplyButton];
    }
}


@end
