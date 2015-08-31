//
//  loadHeadView.m
//  团购
//
//  Created by bbq on 15/5/8.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import "loadHeadView.h"
#define KnumOfPages 5

@interface loadHeadView()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *page;
@property(nonatomic,strong) NSTimer* timer;

@end

@implementation loadHeadView
+(instancetype)HeadView{
    return [[[NSBundle mainBundle]loadNibNamed:@"loadingHeadView" owner:nil options:nil]lastObject];
}

-(void)awakeFromNib{
    self.page.numberOfPages=KnumOfPages;
    self.scrollView.delegate=self;
    int imageY=0;
    int imageW=self.scrollView.frame.size.width;
    int imageH=self.scrollView.frame.size.height;
    for (int i=0;i<KnumOfPages; i++) {
        int imageX=i*imageW;
        UIImageView* imageView=[[UIImageView alloc]init];
        imageView.frame=CGRectMake(imageX, imageY, imageW, imageH);
        imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"ad_%02d",i]];
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize=CGSizeMake(imageW*KnumOfPages, imageH);
    self.scrollView.pagingEnabled=YES;
    self.scrollView.showsHorizontalScrollIndicator=NO;
    [self addTimer];
}
-(void)nextImage{
    int page;
    if (self.page.currentPage==KnumOfPages-1) {
        page=0;
    }else{
        page=self.page.currentPage+1;
    }
    [self.scrollView setContentOffset:CGPointMake(page*self.scrollView.frame.size.width, 0) animated:YES];
    self.page.currentPage=page;
}
-(void)addTimer{
    self.timer =[NSTimer scheduledTimerWithTimeInterval:0.78 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
}
@end
