//
//  tgCell.m
//  团购
//
//  Created by bbq on 15/5/6.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import "tgCell.h"
@interface tgCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageViewv;
@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *buyCountLabel;

@end

@implementation tgCell

+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString* ID=@"tg";
    tgCell* cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell=[[[NSBundle mainBundle]loadNibNamed:@"tgCell" owner:nil options:nil]lastObject];
    }
    return cell;
}

-(void)setInfo:(tgsInfo *)info{
    _info=info;
    self.imageViewv.image=[UIImage imageNamed:info.icon];
    self.title.text=info.title;
    self.priceLabel.text=[NSString stringWithFormat:@"%@元",info.price];
    self.buyCountLabel.text=[NSString stringWithFormat:@"%@人已购买",info.buyCount];
}
@end
