//
//  LimitCell.m
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "LimitCell.h"

#import "StarView.h"

#import "LimitModel.h"

#import <SDWebImage/UIImageView+WebCache.h>

@interface LimitCell()

@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;

@property (weak, nonatomic) IBOutlet UIImageView *appImageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UILabel *lastPriceLabel;

@property (weak, nonatomic) IBOutlet StarView *myStarView;

@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

@property (weak, nonatomic) IBOutlet UILabel *shareLabel;

@property (weak, nonatomic) IBOutlet UILabel *favoriteLabel;

@property (weak, nonatomic) IBOutlet UILabel *downloadLabel;

@property (nonatomic, strong)UIView *lineView;

@end

@implementation LimitCell

- (void)confingModel:(LimitModel *)model withIndex:(int)index withCutLength:(int)cutLength{
    
    //背景图片
    if (index % 2 == 0) {
        self.bgImageView.image = [UIImage imageNamed:@"cate_list_bg1"];
    }else{
        self.bgImageView.image = [UIImage imageNamed:@"cate_list_bg2"];
    }
    
    //图片
    NSURL *url = [NSURL URLWithString:model.iconUrl];
    [self.appImageView sd_setImageWithURL:url];
    
    //名字
    self.nameLabel.text = [NSString stringWithFormat:@"%d.%@",index+1,model.name];
    
    //时间
    
    //原价
    self.lastPriceLabel.text = [NSString stringWithFormat:@"¥:%@",model.lastPrice];
    
    //横线
    if (self.lineView == nil) {
        UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 60, 1)];
        lineView.backgroundColor = [UIColor blackColor];
        self.lineView = lineView;
        [self.lastPriceLabel addSubview:self.lineView];
    }
    
    //星级
    CGFloat rate = [model.starCurrent floatValue];
    
    
    //类型
    self.categoryLabel.text = model.categoryName;
    
    //分享
    self.shareLabel.text = [NSString stringWithFormat:@"分享%@次",model.shares];
    
    //收藏
    self.favoriteLabel.text = [NSString stringWithFormat:@"收藏%@次",model.favorites];
    
    //下载
    self.downloadLabel.text = [NSString stringWithFormat:@"下载%@次",model.downloads];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
