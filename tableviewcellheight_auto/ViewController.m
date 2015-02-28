//
//  ViewController.m
//  tableviewcellheight_auto
//
//  Created by 朱冰冰 on 15/2/28.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//

#import "ViewController.h"

#import "TableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray * arrayText;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arrayText = [NSMutableArray arrayWithObjects:@"蜗壳打MVP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了MVP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了MVP，奥布莱恩杯，效率之王，天之强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了球好潇洒，好飘逸，铁王之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了球好潇洒，好飘逸，铁王之王",@"AI，史上最矮状元，无冕之王，crossoveMVP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了rMVP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了简直厉害，观赏性强，永远的MVP!!!!",@"最年轻的一万分先生，MVP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员MMVP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了VP，奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了没有之一，强突暴扣身体棒，发际线又高了，关键时刻又发际线又高了，关键奥布莱恩杯，效率之王，天之骄子，全宇宙最强的球员没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了没有之一，强突暴扣身体棒，发际线又高了，关键时刻又发际线又高了，关键时刻又耸了，带领骑士夺冠吧，虽然看起，关键时刻又耸了，带领骑士夺冠吧，虽然看起虽然看起来身体棒，发际线又高了，关键时刻又耸了没有之一，强突暴扣身体棒，发际线又高了时刻又耸了，带领骑士夺冠吧，虽然看起，关键时刻又耸了，带领骑士夺冠吧，虽然看起虽然看起来身体棒，发际线又高了，关键时刻又耸了没有之一，强突暴扣身体棒，发际线又高了，关键时刻又耸了，带领骑士夺冠吧，虽然看起还没戏", nil];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrayText.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"TableViewCell";
    
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.myLable.text = [arrayText objectAtIndex:indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static TableViewCell *cell = nil;
    static dispatch_once_t onceToken;
    //只会走一次
    dispatch_once(&onceToken, ^{
        cell = (TableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    });
    
    //calculate
    CGFloat height = [cell calulateHeight:[arrayText objectAtIndex:indexPath.row]];
    
    return height;
}

@end
