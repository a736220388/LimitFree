//
//  StarView.m
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "StarView.h"

#import "UIImageView+Util.h"

@interface StarView()

@property (nonatomic, strong)UIImageView *bgImageView;

@property (nonatomic, strong)UIImageView *fgImageView;

@end

@implementation StarView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self createImageView];
    }
    
    return self;
    
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self createImageView];
    }
    
    return self;
    
}

- (void)createImageView{
    
    self.bgImageView = [UIImageView createImageView:CGRectMake(0, 0, 65, 23) withImage:@"StarsBackground"];
    [self addSubview:self.bgImageView];
    
    self.fgImageView = [UIImageView createImageView:CGRectMake(0, 0, 65, 23) withImage:@"StarsForeground"];
    [self addSubview:self.fgImageView];
    
    self.fgImageView.contentMode = UIViewContentModeLeft;
    self.fgImageView.clipsToBounds = YES;
    
}

- (void)setRating:(CGFloat)rating{
    CGRect frame = [[self fgImageView] frame];
    CGFloat w = 65 / 5 * rating;
    frame.size.width = w;
    self.fgImageView.frame = frame;
}

@end
















