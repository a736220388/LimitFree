//
//  Downloader.h
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Downloader;

@protocol DownloaderDelegate<NSObject>

- (void)downloader:(Downloader *)downloader didFailWithError:(NSError *)error;
- (void)downloader:(Downloader *)downloader didFinishWithData:(NSData *)data;

@end

@interface Downloader : NSObject

- (void)downloadWithURLString:(NSString *)urlString;

@property (nonatomic , strong)id<DownloaderDelegate> delegate;

@property (nonatomic,assign)int *type;

@end
