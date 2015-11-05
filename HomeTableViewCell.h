//
//  HomeTableViewCell.h
//  TabBarExample
//
//  Created by Rakesh Kusuma on 21/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTableViewCell : UITableViewCell 


@property (weak, nonatomic) IBOutlet UIImageView *imageCell;

@property (weak, nonatomic) IBOutlet UIView *viewCell;

@property (weak, nonatomic) IBOutlet UILabel *labelTitleCell;

@property (weak, nonatomic) IBOutlet UILabel *labelSubTitleCell;

@end
