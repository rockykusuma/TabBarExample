//
//  NotificationTabViewController.m
//  TabBarExample
//
//  Created by Rakesh Kusuma on 21/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import "NotificationTabViewController.h"
#import "MFSideMenu.h"

@interface NotificationTabViewController ()

@end

@implementation NotificationTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)MenuButton:(id)sender {
        [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}
@end
