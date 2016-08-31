//
//  MainTabBarViewController.m
//  LimitFree
//
//  Created by qianfeng on 16/8/29.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "MainTabBarViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createViewControllers];
}
- (void)createViewControllers{
    NSArray *ctrlArray = @[@"LimitFreeViewController",@"ReduceViewController",@"FreeViewController",@"SubjectViewController",@"RankViewController"];
    NSArray *nameArray = @[@"限免",@"降价",@"免费",@"专题",@"热榜"];
    NSArray *imageArray = @[@"tabbar_limitfree",@"tabbar_reduceprice",@"tabbar_appfree",@"tabbar_subject",@"tabbar_rank"];
    NSArray *selectImageArray = @[@"tabbar_limitfree_press",@"tabbar_reduceprice_press",@"tabbar_appfree_press",@"tabbar_subject_press",@"tabbar_rank_press"];
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < ctrlArray.count; i++) {
        Class class = NSClassFromString(ctrlArray[i]);
        UIViewController *vc = [[class alloc]init];
        vc.tabBarItem.title = nameArray[i];
        vc.tabBarItem.image = [[UIImage imageNamed: imageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed: selectImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UINavigationController *navCtrl = [[UINavigationController alloc]initWithRootViewController:vc];
        [array addObject:navCtrl];
    }
    self.viewControllers = array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
