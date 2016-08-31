//
//  UILabel+Util.m
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "UILabel+Util.h"

@implementation UILabel (Util)

+ (UILabel *)createLabel:(CGRect)frame withText:(NSString *)text{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    if (text != nil){
        label.text = text;
    }
    return label;
}

@end
