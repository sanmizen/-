//
//  tgsInfo.h
//  团购
//
//  Created by bbq on 15/5/5.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tgsInfo : NSObject
@property(nonatomic,copy)NSString* buyCount;
@property(nonatomic,copy)NSString* icon;
@property(nonatomic,copy)NSString* price;
@property(nonatomic,copy)NSString* title;
-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)tgsWithDict:(NSDictionary*)dict;
@end
