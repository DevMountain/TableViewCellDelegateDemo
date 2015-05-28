//
//  MainTableViewController.m
//  Demo
//
//  Created by DevMtn on 5/27/15.
//  Copyright (c) 2015 DevMtn. All rights reserved.
//

#import "MainTableViewController.h"
#import "Setting.h"
#import "SwitchTableViewCell.h"

typedef NS_ENUM(NSInteger, TableViewSection) {
    ColorSettingsSection,
    SharingSettingsSection,
    SoundSettingsSection
};

@interface MainTableViewController () <SwitchTableViewCellDelegate>

@property (nonatomic, assign) NSInteger numRowsInColorSection;
@property (nonatomic, assign) NSInteger numRowsInSharingSection;
@property (nonatomic, assign) NSInteger numRowsInSoundSection;


@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numRowsInColorSection = 3;
    self.numRowsInSharingSection = 2;
    self.numRowsInSoundSection = 1;
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case ColorSettingsSection:
            return self.numRowsInColorSection;
            break;
            
        case SharingSettingsSection:
            return self.numRowsInSharingSection;
            break;
            
        case SoundSettingsSection:
            return self.numRowsInSoundSection;
            break;
        default:
            return 0;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[SwitchTableViewCell reuseIdentifier] forIndexPath:indexPath];
    
    cell.delegate = self;
    
    return cell;
}

- (void)cellSwitchToggled:(UISwitch *)toggle cell:(SwitchTableViewCell *)cell {
    NSLog(@"View Controller got the message: Switch is %@", toggle.isOn ? @"ON" : @"OFF");
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
