//
//  loadingFootView.h
//  团购
//
//  Created by bbq on 15/5/7.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "loadingFootView.h"
@class loadingFootView;
@protocol loadingFootViewDelegate <NSObject>

@optional
-(void)loadingFootViewDidAddMoreData:(loadingFootView*)loadingFootView;

@end

@interface loadingFootView : UIView
@property(nonatomic,weak) id<loadingFootViewDelegate> delegate;
+(instancetype)footerView;
@end
