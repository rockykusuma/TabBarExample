//
//  HomeTabViewController.m
//  TabBarExample
//
//  Created by Rakesh Kusuma on 21/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import "HomeTabViewController.h"
#import "MFSideMenu.h"
#import "HomeTableViewCell.h"
#import "ClassesViewController.h"
#import "SyllabusViewController.h"
#import "StaffDetailsViewController.h"
#import "EventsViewController.h"

@interface HomeTabViewController () {
    
        NSArray *homeMenu;
}

@end

@implementation HomeTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    homeMenu = [[NSArray alloc]initWithObjects:@"CLASSES",@"SYLLABUS",@"STAFF DETAILS",@"EVENTS",nil];
    // Do any additional setup after loading the view.
    [self.view bringSubviewToFront:self.viewStudentDetails];
    [self.tableViewHome setContentInset:UIEdgeInsetsZero];
    self.automaticallyAdjustsScrollViewInsets = NO;
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [homeMenu count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[HomeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.labelTitleCell.text = [homeMenu objectAtIndex:indexPath.row];

    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
         ClassesViewController *classesController
        = [self.storyboard instantiateViewControllerWithIdentifier:@"ClassesViewController"];
        //[self.menuContainerViewController setCenterViewController:classesController];
        [self.navigationController pushViewController:classesController animated:YES];
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    } else if (indexPath.row == 1) {
         SyllabusViewController *syllabusController
        = [self.storyboard instantiateViewControllerWithIdentifier:@"SyllabusViewController"];
        //[self.menuContainerViewController setCenterViewController:classesController];
        [self.navigationController pushViewController:syllabusController animated:YES];
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    } else if (indexPath.row == 2) {
        StaffDetailsViewController *staffController
        = [self.storyboard instantiateViewControllerWithIdentifier:@"StaffDetailsViewController"];
        //[self.menuContainerViewController setCenterViewController:classesController];
        [self.navigationController pushViewController:staffController animated:YES];
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    } else if (indexPath.row == 3) {
        EventsViewController *eventsController
        = [self.storyboard instantiateViewControllerWithIdentifier:@"EventsViewController"];
        //[self.menuContainerViewController setCenterViewController:classesController];
        [self.navigationController pushViewController:eventsController animated:YES];
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    }
}




- (IBAction)MenuButton:(id)sender {
        [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}
@end
