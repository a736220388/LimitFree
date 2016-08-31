//
//  LFBaseViewController.m
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "LFBaseViewController.h"
#import "UILabel+Util.h"
#import "UIButton+Util.h"

@interface LFBaseViewController ()

- (void)addNavBtn:(NSString *)title withTarget:(id)target withAction:(SEL)action withIsLeft:(BOOL)isLeft withBgImageName:(NSString *)bgImageName;

@end

@implementation LFBaseViewController

- (void)setPage:(int)page{
    _page = 1;
}

- (NSMutableArray *)dataArray{
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tbView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64,kScreenWidth, kScreenHeight-64-49) style:(UITableViewStylePlain)];
    self.tbView.delegate = self;
    self.tbView.dataSource =self;
    self.tbView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tbView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self downloadData];
    [self createTableView];
}

- (void)addNavTitle:(NSString *)text{
    UILabel *label = [UILabel createLabel:CGRectMake(80, 0, 215, 44) withText:text];
    label.font = [UIFont systemFontOfSize:24];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor colorWithRed:48.0/255.0 green:124.0/255.0 blue:174.0/255.0 alpha:1.0];
    self.navigationItem.titleView = label;
}

- (void)addNavBtn:(NSString *)title withTarget:(id)target withAction:(SEL)action withIsLeft:(BOOL)isLeft withBgImageName:(NSString *)bgImageName{
    UIButton *btn = [UIButton createButton:CGRectMake(0, 4, 60, 36) withTitle:title withBgImage:bgImageName withTarget:target withAction:action];
    UIBarButtonItem *btnBarItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    if (isLeft) {
        self.navigationItem.leftBarButtonItem = btnBarItem;
    }else{
        self.navigationItem.rightBarButtonItem = btnBarItem;
    }
}
- (void)addNavBtn:(NSString *)title withTarget:(id)target withAction:(SEL)action withIsLeft:(BOOL)isLeft{
    [self addNavBtn:title withTarget:target withAction:action withIsLeft:isLeft withBgImageName:@"buttonbar_action"];
}
- (void)addBackBtn{
    [self addNavBtn:@"返回" withTarget:self withAction:@selector(backAction) withIsLeft:YES withBgImageName:@"buttonbar_back"];
}
- (void)backAction{
    [self.navigationController popViewControllerAnimated:true];
}
#pragma mark - Downloader下载数据的方法
- (void)downloadData{
    
}

#pragma mark - UITableView代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"子类必须实现的方法numberOfRowsInSection");
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"子类必须实现的方法cellForRowAtIndexPath");
    return [[UITableViewCell alloc]init];
}

@end
