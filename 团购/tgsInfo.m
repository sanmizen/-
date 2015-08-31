//
//  tgsInfo.m
//  团购
//
//  Created by bbq on 15/5/5.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import "tgsInfo.h"

@implementation tgsInfo
-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self==[super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)tgsWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}
@end
