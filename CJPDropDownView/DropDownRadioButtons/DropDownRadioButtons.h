//
//  DropDownRadioButtons.h
//  CJPDropDownViewDemo
//
//  Created by lichq on 9/8/15.
//  Copyright (c) 2015 ciyouzen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RadioButtons/RadioButtonsCanDrop.h>
#import "TableViewArraySingle.h"


@class DropDownRadioButtons;
@protocol DropDownRadioButtonsDelegate <NSObject>

- (void)ddRadioButtons:(DropDownRadioButtons *)ddRadioButtons didSelectText:(NSString *)text;
@end



@interface DropDownRadioButtons : UIView<RadioButtonsCanDropDelegate, TableViewArraySingleDelegate>{
    RadioButtonsCanDrop *comRadioButtons;
}
@property(nonatomic, strong) NSArray *datas;
@property(nonatomic, strong) id<DropDownRadioButtonsDelegate> delegate;

@end
