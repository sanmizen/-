//
//  loadingFootView.m
//  团购
//
//  Created by bbq on 15/5/7.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import "loadingFootView.h"

@interface loadingFootView()
- (IBAction)loadBtnClick;
@property (weak, nonatomic) IBOutlet UIView *loadView;
@property (weak, nonatomic) IBOutlet UIButton *loadBut;

@end
@implementation loadingFootView



- (IBAction)loadBtnClick {
    self.loadBut.hidden=YES;
    self.loadView.hidden=NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([self.delegate respondsToSelector:@selector(loadingFootViewDidAddMoreData:)]) {
            [self.delegate loadingFootViewDidAddMoreData:self];
        }
        self.loadBut.hidden=NO;
        self.loadView.hidden=YES;
    });
}
+(instancetype)footerView{
    return [[NSBundle mainBundle]loadNibNamed:@"loadingFootView" owner:nil options:nil][0];
}
@end
