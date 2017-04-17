//
//  TBProductDetailVC.m
//  TBProductDetail
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "TBProductDetailVC.h"
#import "FirstView.h"
#import "SecondView.h"

// 触发滚动偏移
#define SCROLL_OFFSET 64

@interface TBProductDetailVC ()<FirstViewDelegate>

// 大背景滚动视图
@property (nonatomic, weak)UIView * bigBgView;
// 第一个小滚动视图
@property (nonatomic, weak)UIScrollView * firstScrollView;
// 第二个小滚动视图
@property (nonatomic, weak)UIScrollView * secondScorollView;
// 第一个小view
@property (nonatomic, weak)FirstView * firstSmallView;
// 第二个小view
@property (nonatomic, weak)SecondView * secondSmallView;

@end

@implementation TBProductDetailVC

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];

    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UILabel * label = [[UILabel alloc] init];
    label.text      = @"产品详情";
    label.textColor = [UIColor blackColor];
    label.font      = [UIFont systemFontOfSize:17];
    [label sizeToFit];
    self.navigationItem.titleView = label;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createViews];
    [self setupViewContents];
    [self setViewsLayouts];
}

/**
 创建视图
 */
- (void)createViews{
    
    UIView * bigBgView                  = [[UIView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, (SCREEN_HEIGHT - 64) * 2)];
    UIScrollView * firstScrollView      = [[UIScrollView alloc] init];
    UIScrollView * secondScorollView    = [[UIScrollView alloc] init];
    FirstView * firstSmallView      = [[FirstView alloc] init];
    SecondView * secondSmallView    = [[SecondView alloc] init];
    
    self.bigBgView          = bigBgView;
    self.firstScrollView    = firstScrollView;
    self.secondScorollView  = secondScorollView;
    self.firstSmallView     = firstSmallView;
    self.secondSmallView    = secondSmallView;
    
    [self.view addSubview:bigBgView];
    [bigBgView addSubview:firstScrollView];
    [bigBgView addSubview:secondScorollView];
    [firstScrollView addSubview:firstSmallView];
    [secondScorollView addSubview:secondSmallView];
}

/**
 设置控件内容
 */
-(void)setupViewContents{
    
    [self.firstScrollView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    [self.secondScorollView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    
    self.secondScorollView.backgroundColor = RGAB(234, 235, 236, 1);
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.firstSmallView.delegate = self;
}

/**
 设置视图的约束
 */
- (void)setViewsLayouts{
    
    // 第一个滚动视图
    [self.firstScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.right.equalTo(self.bigBgView);
        make.size.mas_equalTo(CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 64));
    }];
    // 第二个滚动视图
    [self.secondScorollView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.bottom.right.equalTo(self.bigBgView);
        make.top.equalTo(self.firstScrollView.mas_bottom);
        make.size.mas_equalTo(CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 64));
    }];
    // 第一个视图
    [self.firstSmallView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_greaterThanOrEqualTo(SCREEN_HEIGHT - 63);
        make.left.top.right.bottom.equalTo(self.firstScrollView);
    }];
    // 第二个视图
    [self.secondSmallView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_greaterThanOrEqualTo(SCREEN_HEIGHT - 63);
        make.left.top.right.bottom.equalTo(self.secondScorollView);;
    }];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if (object == self.firstScrollView) {
        
        if (self.firstSmallView.bounds.size.height == 0) {
            return;
        }
        
        CGFloat moreH = self.firstSmallView.bounds.size.height - (SCREEN_HEIGHT - 64);
        
        CGPoint point = [change[NSKeyValueChangeNewKey] CGPointValue];
        if (point.y > SCROLL_OFFSET + moreH) {
            [self scrollToSecond];
        }
    } else if (object == self.secondScorollView){
        
        CGPoint point = [change[NSKeyValueChangeNewKey] CGPointValue];
        if (point.y < -SCROLL_OFFSET) {
            [self scrollToFirst];
        }
        
        if (point.y < -40) {
            
            self.secondSmallView.noticeButton.center = CGPointMake(SCREEN_WIDTH * 0.5, point.y * 0.5);
        }
    }
    
}

- (void)scrollToSecond{
    
    [UIView animateWithDuration:0.25 animations:^{
        
        self.bigBgView.Y = -(SCREEN_HEIGHT - 64 - 64);
    }];
}


- (void)scrollToFirst{
    
    [UIView animateWithDuration:0.25 animations:^{
        
        self.bigBgView.Y = 64;
    }];
}

#pragma mark - BJFXFirstViewDelegate

- (void)backVC{
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)clickedApplyButton{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    
    [self.firstScrollView removeObserver:self forKeyPath:@"contentOffset"];
    [self.secondScorollView removeObserver:self forKeyPath:@"contentOffset"];
}


@end
