//
//  LimitCell.h
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LimitModel;

@interface LimitCell : UITableViewCell

- (void)confingModel:(LimitModel *)model withIndex:(int)index withCutLength:(int)cutLength;

@end
