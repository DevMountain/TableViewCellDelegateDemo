//
//  SwitchTableViewCell.m
//  Demo
//
//  Created by DevMtn on 5/27/15.
//  Copyright (c) 2015 DevMtn. All rights reserved.
//

#import "SwitchTableViewCell.h"

@implementation SwitchTableViewCell

+ (NSString *)reuseIdentifier {
    return @"SwitchCell";
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)switchToggled:(UISwitch *)sender {
    NSLog(@"Cell got the message");
    
    [self.delegate cellSwitchToggled:sender cell:self];
}
















@end
