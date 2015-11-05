//
//  LeftMenuViewController.m
//  TabBarExample
//
//  Created by Rakesh Kusuma on 21/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "MyTableViewCell.h"
#import "ViewController.h"
#import "MFSideMenu.h"
#import "AboutUsViewController.h"
#import "AppDelegate.h"

@interface LeftMenuViewController () {

    NSArray *menuItems;
    AppDelegate *appDelegate;
}

@end

@implementation LeftMenuViewController

- (void)viewDidLoad {
    appDelegate = [UIApplication sharedApplication].delegate;
    [super viewDidLoad];
      menuItems = [[NSArray alloc]initWithObjects:@"HOME",@"ABOUT US",@"COURSE DETAILS",@"PLACEMENTS",@"FACILITIES", @"ABOUT THE SCHOOL", nil];
    
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return [menuItems count];

    
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[MyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [menuItems objectAtIndex:indexPath.row];
    
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   /*
    if (indexPath.row==0) {
        ViewController *demoController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        demoController.title = [NSString stringWithFormat:@"Demo #%ld-%ld", (long)indexPath.section, (long)indexPath.row];
        
        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        NSArray *controllers = [NSArray arrayWithObject:demoController];
        navigationController.viewControllers = controllers;
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    }else  if (indexPath.row==1) {
        ViewController *demoController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        demoController.title = [NSString stringWithFormat:@"Demo #%ld-%ld", (long)indexPath.section, (long)indexPath.row];
        
        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        NSArray *controllers = [NSArray arrayWithObject:demoController];
        navigationController.viewControllers = controllers;
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    }
    
    */
    
    if (indexPath.row == 0) {
        [self.menuContainerViewController setCenterViewController:appDelegate.welcomeVc];
        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];

    }else if (indexPath.row == 1) {
        AboutUsViewController *abtController = [self.storyboard instantiateViewControllerWithIdentifier:@"AboutUsViewController"];
//        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//        NSArray *controllers = [NSArray arrayWithObject:abtController];
//        navigationController.viewControllers = controllers;
        
        [self.menuContainerViewController setCenterViewController:abtController];

        [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];

//        [self.menuContainerViewController.navigationController pushViewController:abtController animated:YES];

        
    }
    
    
}

@end
