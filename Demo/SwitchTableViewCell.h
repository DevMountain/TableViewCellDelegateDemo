//
//  SwitchTableViewCell.h
//  Demo
//
//  Created by DevMtn on 5/27/15.
//  Copyright (c) 2015 DevMtn. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwitchTableViewCellDelegate;

@interface SwitchTableViewCell : UITableViewCell

+ (NSString *)reuseIdentifier;

@property (weak, nonatomic) id<SwitchTableViewCellDelegate> delegate;

@end

@protocol SwitchTableViewCellDelegate <NSObject>

- (void)cellSwitchToggled:(UISwitch *)toggle cell:(SwitchTableViewCell *)cell;

@end

