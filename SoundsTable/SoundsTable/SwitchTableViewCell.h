//
//  SwitchTableViewCell.h
//  SoundsTable
//
//  Created by Gan Chau on 6/22/15.
//  Copyright (c) 2015 Gantastic App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *settingNameLabel;
@property (weak, nonatomic) IBOutlet UISwitch *onOffSwitch;

@end
