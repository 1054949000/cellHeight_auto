//
//  TableViewCell.h
//  tableviewcellheight_auto
//
//  Created by 朱冰冰 on 15/2/28.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *myLable;
-(CGFloat)calulateHeight:(NSString*)content;
@end
