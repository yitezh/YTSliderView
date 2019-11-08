//
//  XYSliderSetting.m
//  XYSliderView
//
//  Created by yitezh on 2019/10/19.
//  Copyright © 2019 yitezh. All rights reserved.
//

#import "XYSliderSetting.h"

@implementation XYSliderSetting

+ (instancetype)defaultSetting {
    XYSliderSetting *setting = [[XYSliderSetting alloc]init];
    if(setting) {
        setting.borderWidth = 4;
        setting.progressInset = 2;
        setting.shouldShowProgress = YES;
        setting.layoutDirection = XYSliderLayoutDirectionHorizontal;
        setting.thumbColor = [UIColor whiteColor];
        setting.backgroundColor = [UIColor whiteColor];
        setting.progressColor = [UIColor colorWithRed:43/255.0 green:157/255.0 blue:247/255.0 alpha:1.0];
        setting.thumbBorderColor = [UIColor colorWithRed:43/255.0 green:157/255.0 blue:247/255.0 alpha:1.0];
    }
    return setting;
}

+ (instancetype)verticalSetting {
    XYSliderSetting *setting = [[XYSliderSetting alloc]init];
    if(setting) {
    setting.borderWidth = 2;
    setting.progressInset = 1;
    setting.layoutDirection = XYSliderLayoutDirectionVertical;
    setting.progressColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:1.0];
    setting.thumbBorderColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:1.0];
    setting.thumbColor = [UIColor colorWithWhite:1 alpha:0.8];
    setting.backgroundColor = [UIColor colorWithRed:33/255.0 green:33/255.0 blue:33/255.0 alpha:1.0];
    setting.shouldShowProgress = YES;
    }
    return setting;
}

@end
