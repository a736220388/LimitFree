//
//  LimitFreeViewController.m
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "LimitFreeViewController.h"
#import "Downloader.h"
#import "LimitModel.h"
#import "LimitCell.h"

@interface LimitFreeViewController ()<DownloaderDelegate>

@property (nonatomic,strong)Downloader *d;

@end

@implementation LimitFreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)downloadData{
    NSString *urlString = [NSString stringWithFormat:kLimitUrl,self.page];
    Downloader *downloader = [[Downloader alloc]init];
    downloader.delegate = self;
    [downloader downloadWithURLString:urlString];
    self.d = downloader;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Downloader的代理方法

- (void)downloader:(Downloader *)downloader didFailWithError:(NSError *)error{
    NSLog(@"%@",error);
}
- (void)downloader:(Downloader *)downloader didFinishWithData:(NSData *)data{
    NSError *error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if (error == nil) {
        if ([result isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dict = (NSDictionary *)result;
            NSArray *apps = (NSArray *)dict[@"applications"];
            for (NSDictionary *appDict in apps) {
                LimitModel *model = [[LimitModel alloc]initWithDict:appDict];
                [self.dataArray addObject:model];
            }
        }
        __weak typeof (self) weakSelf = self;
        dispatch_async(dispatch_get_main_queue(), ^{
            [weakSelf.tbView reloadData];
        });
    }
}

#pragma mark - UITableView的代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"limitCellId";
    LimitCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"LimitCell" owner:nil options:nil] lastObject];
    }
    LimitModel *model = self.dataArray[indexPath.row];
    int index = (int)indexPath.row;
    [cell confingModel:model withIndex:index withCutLength:2];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

@end
