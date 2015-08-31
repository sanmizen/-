//
//  ViewController.m
//  团购
//
//  Created by bbq on 15/5/5.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import "ViewController.h"
#import "tgsInfo.h"
#import "tgCell.h"
#import "loadingFootView.h"
#import "loadHeadView.h"
@interface ViewController ()<UITableViewDataSource,loadingFootViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSMutableArray* tgsInfoArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    loadingFootView* loadingFoot=[loadingFootView footerView];
    loadingFoot.delegate=self;
    self.tableView.rowHeight=80;
    self.tableView.tableFooterView=loadingFoot;
    self.tableView.tableHeaderView=[loadHeadView HeadView];
}
-(BOOL)prefersStatusBarHidden{
    return YES;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.tgsInfoArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    tgsInfo* info=self.tgsInfoArray[indexPath.row];
    tgCell* cell=[tgCell cellWithTableView:tableView];
    cell.info=info;
    return cell;
}

/**
 懒加载
 */
-(NSMutableArray*)tgsInfoArray{
    if (_tgsInfoArray==nil) {
        NSString* path=[[NSBundle mainBundle]pathForResource:@"tgs" ofType:@"plist"];
        NSArray* dictArray=[NSArray arrayWithContentsOfFile:path];
        NSMutableArray* tempArray=[NSMutableArray array];
        for (NSDictionary* dict in dictArray) {
            tgsInfo* info=[tgsInfo tgsWithDict:dict];
            [tempArray addObject:info];
        }
        _tgsInfoArray=tempArray;
    }
    return _tgsInfoArray;
}
/**
 实现loadingFootView的代理方法
 */
-(void)loadingFootViewDidAddMoreData:(loadingFootView *)loadingFootView{
    tgsInfo* info=[[tgsInfo alloc]init];
    info.icon=@"53453be0d2dd458c057286d17f6b9306";
    info.title=@"hehehe";
    info.buyCount=@"23";
    info.price=@"5555";
    [self.tgsInfoArray addObject:info];
    [self.tableView reloadData];
}
@end
