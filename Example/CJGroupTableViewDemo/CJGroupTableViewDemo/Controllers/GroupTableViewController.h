//
//  GroupTableViewController.h
//  CJGroupTableViewDemo
//
//  Created by lichq on 9/7/15.
//  Copyright (c) 2015 ciyouzen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CJSingleTableView.h"
#import "CJGroupTableView.h"
#import "GroupDataUtil.h"

@interface GroupTableViewController : UIViewController<CJSingleTableViewDelegate, CJGroupTableViewDelegate>

@property (nonatomic, weak) IBOutlet CJSingleTableView *singleTableView;

@property (nonatomic, strong) IBOutlet CJGroupTableView *groupTableView1;
@property (nonatomic, weak) IBOutlet UILabel *groupTextLabel1;

@property (nonatomic, strong) IBOutlet CJGroupTableView *groupTableView2;
@property (nonatomic, weak) IBOutlet UILabel *groupTextLabel2;

@property (nonatomic, strong) IBOutlet CJGroupTableView *groupTableView3;
@property (nonatomic, weak) IBOutlet UILabel *groupTextLabel3;

@end
