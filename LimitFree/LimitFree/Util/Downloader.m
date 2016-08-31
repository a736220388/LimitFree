//
//  Downloader.m
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "Downloader.h"

@implementation Downloader
- (void)downloadWithURLString:(NSString *)urlString{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    __weak typeof (self) weakSelf = self;
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error != nil) {
            [weakSelf.delegate downloader:weakSelf didFailWithError:error];
        }else{
            NSHTTPURLResponse *httpRes = (NSHTTPURLResponse *)response;
            if (httpRes.statusCode == 200) {
                [weakSelf.delegate downloader:weakSelf didFinishWithData:data];
            }else{
                [weakSelf.delegate downloader:weakSelf didFailWithError:nil];
            }
        }
    }];
    [task resume];
}
@end
