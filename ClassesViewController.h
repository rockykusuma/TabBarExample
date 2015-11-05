//
//  ClassesViewController.h
//  TabBarExample
//
//  Created by Rakesh Kusuma on 23/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassesViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *navigationView;

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UIImageView *ImageNav;
- (IBAction)buttonBack:(id)sender;


@property(nonatomic,strong)UIButton *buttonClassTimings;
@property(nonatomic,strong)UIButton *buttonNoOfClasses;
@end
