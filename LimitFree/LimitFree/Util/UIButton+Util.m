//
//  UIButton+Util.m
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "UIButton+Util.h"

@implementation UIButton (Util)
+(UIButton *)createButton:(CGRect)frame withTitle:(NSString *)title withBgImage:(NSString *)bgImageName withTarget:(id)target withAction:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    if (title != nil){
        [btn setTitle:title forState:normal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    if (bgImageName != nil){
        [btn setBackgroundImage:[UIImage imageNamed:bgImageName] forState:(UIControlStateNormal)];
    }
    if (target != nil && action != nil) {
        [btn addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    }
    return btn;
}
@end
