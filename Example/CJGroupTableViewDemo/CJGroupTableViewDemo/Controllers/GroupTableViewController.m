//
//  GroupTableViewController.m
//  CJGroupTableViewDemo
//
//  Created by lichq on 9/7/15.
//  Copyright (c) 2015 ciyouzen. All rights reserved.
//

#import "GroupTableViewController.h"

@interface GroupTableViewController ()

@end

@implementation GroupTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setupDataListViewSingle];
    
    [self setupGroupTableView1];
    [self setupGroupTableView2];
    [self setupGroupTableView3];
}


- (void)setupDataListViewSingle {
    NSArray *chooseArray = @[@"区域", @"鼓楼", @"台江", @"仓山"];
    
    [self.singleTableView setDatas:chooseArray];
    [self.singleTableView setDelegate:self];
}

#pragma mark - 注意增加此行
- (BOOL)automaticallyAdjustsScrollViewInsets {
    return NO;
}

#pragma mark - 设置数据
- (void)setupGroupTableView1 {
    CJDataGroupModel *dataGroupModel = [GroupDataUtil groupData1];
    
    [_groupTableView1 setDataGroupModel:dataGroupModel];
    [_groupTableView1 updateTableViewBackgroundColor:[UIColor greenColor] inComponent:0];
    [_groupTableView1 updateTableViewBackgroundColor:[UIColor yellowColor] inComponent:1];
    [_groupTableView1 updateTableViewBackgroundColor:[UIColor greenColor] inComponent:2];
    [_groupTableView1 setDelegate:self];
}

- (void)setupGroupTableView2 {
    CJDataGroupModel *dataGroupModel = [GroupDataUtil groupData2];
    
    [_groupTableView2 setDataGroupModel:dataGroupModel];
    [_groupTableView2 updateTableViewBackgroundColor:[UIColor greenColor] inComponent:0];
    [_groupTableView2 updateTableViewBackgroundColor:[UIColor yellowColor] inComponent:1];
    [_groupTableView2 updateTableViewBackgroundColor:[UIColor greenColor] inComponent:2];
    [_groupTableView2 setDelegate:self];
}

- (void)setupGroupTableView3 {
    CJDataGroupModel *dataGroupModel = [GroupDataUtil groupData3];
    
    [_groupTableView3 setDataGroupModel:dataGroupModel];
    [_groupTableView3 updateTableViewBackgroundColor:[UIColor greenColor] inComponent:0];
    [_groupTableView3 updateTableViewBackgroundColor:[UIColor yellowColor] inComponent:1];
    [_groupTableView3 updateTableViewBackgroundColor:[UIColor greenColor] inComponent:2];
    [_groupTableView3 setDelegate:self];
}


#pragma mark - CJSingleTableViewDelegate
- (void)cj_singleTableView:(CJSingleTableView *)singleTableView didSelectText:(NSString *)text {
    NSLog(@"text2 = %@", text);
}

#pragma mark - CJGroupTableViewDelegate
- (void)cj_groupTableView:(CJGroupTableView *)groupTableView didSelectText:(NSString *)text {
    NSArray *selectedTitles = groupTableView.dataGroupModel.selectedTitles;
    NSLog(@"text1 = %@, %@", text, selectedTitles);
    
    NSString *string = @"";
    for (NSString *selectedTitle in selectedTitles) {
        string = [string stringByAppendingString:selectedTitle];
    }
    
    if (groupTableView == self.groupTableView1) {
        self.groupTextLabel1.text = string;
    } else if (groupTableView == self.groupTableView3) {
        self.groupTextLabel3.text = string;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
