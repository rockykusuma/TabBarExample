//
//  HomeTabViewController.h
//  TabBarExample
//
//  Created by Rakesh Kusuma on 21/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTabViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>



@property (weak, nonatomic) IBOutlet UIView *viewStudentDetails;

@property (weak, nonatomic) IBOutlet UIImageView *imageProfilePic;


@property (weak, nonatomic) IBOutlet UITableView *tableViewHome;







- (IBAction)MenuButton:(id)sender;

@end
