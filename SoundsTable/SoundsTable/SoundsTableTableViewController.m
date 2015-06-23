//
//  SoundsTableTableViewController.m
//  SoundsTable
//
//  Created by Gan Chau on 6/18/15.
//  Copyright (c) 2015 Gantastic App. All rights reserved.
//

#import "SoundsTableTableViewController.h"
#import "SwitchTableViewCell.h"
#import "SliderTableViewCell.h"
#import "RingtoneTableViewCell.h"

@interface SoundsTableTableViewController ()

@end

@implementation SoundsTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 2) {
        return 3;
    } else {
        return 2;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    // Configure the cell...
    if (indexPath.section == 0) {
        SwitchTableViewCell *switchCell = [tableView dequeueReusableCellWithIdentifier:@"switchCellRID" forIndexPath:indexPath];
        if (indexPath.row == 0) {
            switchCell.settingNameLabel.text = @"Vibrate On Ring";
        } else if (indexPath.row == 1) {
            switchCell.settingNameLabel.text = @"Vibrate On Silent";
            switchCell.onOffSwitch.on = NO;
        }
        return switchCell;
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            SliderTableViewCell *sliderCell = [tableView dequeueReusableCellWithIdentifier:@"sliderCellRID" forIndexPath:indexPath];
            sliderCell.volumeSlider.value = 0;
            return sliderCell;
        } else if (indexPath.row == 1) {
            SwitchTableViewCell *switchCell = [tableView dequeueReusableCellWithIdentifier:@"switchCellRID" forIndexPath:indexPath];
            switchCell.settingNameLabel.text = @"Change With Buttons";
            return switchCell;
        }
    }
    RingtoneTableViewCell *ringtoneCell = [tableView dequeueReusableCellWithIdentifier:@"ringtoneCellRID" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        ringtoneCell.settingLabel.text = @"Ringtone";
        ringtoneCell.detailLabel.text = @"Trill";
    } else if (indexPath.row == 1) {
        ringtoneCell.settingLabel.text = @"Text Tone";
        ringtoneCell.detailLabel.text = @"Glass";
    } else {
        ringtoneCell.settingLabel.text = @"New Voicemail";
        ringtoneCell.detailLabel.text = @"Tri-tone";
    }
    return ringtoneCell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"VIBRATE";
    } else if (section == 1) {
        return @"RINGER AND ALERTS";
    }
    return @"SOUNDS AND VIBRATION PATTERNS";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 1) {
        return @"The volume of the ringer and alerts can be adjusted using the volume buttons.";
    }
    return @"";
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
