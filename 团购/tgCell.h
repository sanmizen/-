//
//  tgCell.h
//  团购
//
//  Created by bbq on 15/5/6.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tgsInfo.h"
@interface tgCell : UITableViewCell
@property(nonatomic,strong) tgsInfo* info;
+(instancetype)cellWithTableView:(UITableView*)tableView;
@end
