//
//  LFBaseViewController.h
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LFBaseViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *tbView;

@property (nonatomic,strong)NSMutableArray *dataArray;

@property (nonatomic,assign)int page;

- (void)downloadData;

- (void)addNavTitle:(NSString *)text;

- (void)addNavBtn:(NSString *)title withTarget:(id)target withAction:(SEL)action withIsLeft:(BOOL)isLeft;

- (void)addBackBtn;

@end
