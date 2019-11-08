//
//  YTVolumeSliderView.h
//  ytSliderView
//
//  Created by yitezh on 2019/10/18.
//  Copyright © 2019 yitezh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTSliderSetting.h"
@class YTSliderView;
NS_ASSUME_NONNULL_BEGIN



@protocol YTSliderViewDelegate <NSObject>

@optional

- (void)ytSliderView:(YTSliderView *)view didChangePercent:(CGFloat)percent;

- (void)ytSliderViewDidBeginDrag:(YTSliderView *)view;

- (void)ytSliderViewDidEndDrag:(YTSliderView *)view;
@end



@interface YTSliderView : UIView

- (instancetype)initWithFrame:(CGRect)frame setting:(YTSliderSetting *)setting;

//滑杆初始位置（零点位置）
@property (assign, nonatomic) CGFloat anchorPercent;
//当前百分比
@property (assign, nonatomic) CGFloat currentPercent;
//总值（主要用于显示）
@property (assign, nonatomic) NSInteger sumValue;
//setting用于静态属性
@property (strong, nonatomic) YTSliderSetting *setting;

@property (weak, nonatomic) id<YTSliderViewDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
