//
//  UIImageView+Util.m
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "UIImageView+Util.h"

@implementation UIImageView (Util)
+(UIImageView *)createImageView:(CGRect)frame withImage:(NSString *)imageName{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    if (imageName != nil){
        imageView.image = [UIImage imageNamed:imageName];
    }
    return  imageView;
}
@end
