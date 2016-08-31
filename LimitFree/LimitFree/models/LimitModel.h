//
//  LimitModel.h
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LimitModel : NSObject

@property (nonatomic,strong)NSString *applicationId;
@property (nonatomic,strong)NSString *slug;
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *releaseDate;
@property (nonatomic,strong)NSString *version;

@property (nonatomic,strong)NSString *myDescription;
@property (nonatomic,strong)NSNumber *categoryId;
@property (nonatomic,strong)NSString *categoryName;
@property (nonatomic,strong)NSString *iconUrl;
@property (nonatomic,strong)NSString *itunesUrl;

@property (nonatomic,strong)NSString *starCurrent;
@property (nonatomic,strong)NSString *starOverall;
@property (nonatomic,strong)NSString *ratingOverall;
@property (nonatomic,strong)NSString *downloads;
@property (nonatomic,strong)NSString *currentPrice;

@property (nonatomic,strong)NSString *lastPrice;
@property (nonatomic,strong)NSString *priceTrend;
@property (nonatomic,strong)NSString *expireDatetime;
@property (nonatomic,strong)NSString *releaseNotes;
@property (nonatomic,strong)NSString *updateDate;

@property (nonatomic,strong)NSString *fileSize;
@property (nonatomic,strong)NSString *ipa;
@property (nonatomic,strong)NSString *shares;
@property (nonatomic,strong)NSString *favorites;

- (instancetype)initWithDict:(NSDictionary *)dict;

@end
