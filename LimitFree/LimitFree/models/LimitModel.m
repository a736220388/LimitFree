//
//  LimitModel.m
//  LimitFree
//
//  Created by qianfeng on 16/8/30.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "LimitModel.h"

@implementation LimitModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqual: @"description"]) {
        _myDescription = value;
    }
}

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end
