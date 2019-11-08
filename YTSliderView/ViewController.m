//
//  ViewController.m
//  YTSliderView
//
//  Created by yitezh on 2019/11/8.
//  Copyright © 2019 yitezh. All rights reserved.
//

#import "ViewController.h"
#import "YTSliderView.h"
@interface ViewController ()<YTSliderViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    YTSliderSetting *setting_v = [YTSliderSetting defaultSetting];
    YTSliderView *slider_v = [[YTSliderView alloc]initWithFrame:CGRectMake(100, 400, 120, 30) setting:setting_v];
    slider_v.currentPercent = 0.2;
    slider_v.tag = 1000;
    slider_v.delegate = self;
    [self.view addSubview:slider_v];
    
    
    YTSliderSetting *setting = [YTSliderSetting defaultSetting];
    YTSliderView *slider_a = [[YTSliderView alloc]initWithFrame:CGRectMake(100, 300, 120, 20) setting:setting];
    slider_a.anchorPercent = 0.5;
    slider_a.tag = 3000;
    slider_a.delegate = self;
    [self.view addSubview:slider_a];
    
    
    YTSliderSetting *setting_h = [YTSliderSetting verticalSetting];
    YTSliderView *slider_h = [[YTSliderView alloc]initWithFrame:CGRectMake(100, 100, 20, 120) setting:setting_h];
    slider_h.tag = 2000;
    slider_h.delegate = self;
    [self.view addSubview:slider_h];
    
    

    
}

- (void)ytSliderViewDidBeginDrag:(YTSliderView *)view {
    NSLog(@"DidBeginDrag");
}

- (void)ytSliderViewDidEndDrag:(YTSliderView *)view {
    NSLog(@"DidEndDrag");
}

- (void)ytSliderView:(YTSliderView *)view didChangePercent:(CGFloat)percent {
    if(view.tag == 1000) {
        NSLog(@"1000Tag percent:%f",percent);
    }
    else if(view.tag == 2000) {
        NSLog(@"2000Tag percent%f",percent);
    } else if(view.tag == 3000) {
        NSLog(@"3000Tag percent%f",percent);
    }
}


@end
