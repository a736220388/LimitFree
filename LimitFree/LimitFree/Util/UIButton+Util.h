//
//  UIButton+Util.h
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Util)
+ (UIButton *)createButton:(CGRect)frame withTitle:(NSString *)title withBgImage:(NSString *)bgImageName withTarget:(id)target withAction:(SEL)action;

@end
