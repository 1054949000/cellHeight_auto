//
//  TableViewCell.m
//  tableviewcellheight_auto
//
//  Created by 朱冰冰 on 15/2/28.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(CGFloat)calulateHeight:(NSString*)content
{
    CGFloat autoWidth = [UIScreen mainScreen].bounds.size.width-150;
    
    self.myLable.preferredMaxLayoutWidth = autoWidth;
    
//    [self.myLable layoutIfNeeded];
    self.myLable.text = content;
//    [self.contentView layoutIfNeeded];
    
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    return size.height>80?size.height+1:80;
}


@end
