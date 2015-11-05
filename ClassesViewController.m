//
//  ClassesViewController.m
//  TabBarExample
//
//  Created by Rakesh Kusuma on 23/10/15.
//  Copyright © 2015 Rakesh Kusuma. All rights reserved.
//

#import "ClassesViewController.h"

@interface ClassesViewController ()

@end

@implementation ClassesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    
    CGFloat width = 120;
    CGSize x = [[UIScreen mainScreen] bounds].size;
    
    CGFloat xPosition = ((x.width/2)-width)*(0.75);
    CGFloat yPosition = ((x.height-108)/2-(width/2));
    CGFloat xPosition2 = ((x.width/2)-width)*(0.25)+(x.width/2);
    
    
    self.buttonClassTimings = [[UIButton alloc]init];
    [self.buttonClassTimings setTitle:@"CLASS TIMINGS" forState:UIControlStateNormal];
    [self.buttonClassTimings setFont:[UIFont fontWithName:@"AvenirNext-Regular" size:14]];
    [self.buttonClassTimings setFrame:CGRectMake(xPosition, yPosition, width, width)];
    self.buttonClassTimings.layer.cornerRadius = width/2;
    self.buttonClassTimings.layer.masksToBounds = YES;
    self.buttonClassTimings.layer.borderColor = [UIColor blackColor].CGColor;
    [self.buttonClassTimings setBackgroundColor:[UIColor blueColor]];
    self.buttonClassTimings.layer.borderWidth = 1.0;

    
    [self.contentView addSubview:self.buttonClassTimings];
    
    self.buttonNoOfClasses = [[UIButton alloc]init];
    [self.buttonNoOfClasses setTitle:@"NO. OF CLASSES" forState:UIControlStateNormal];
    [self.buttonNoOfClasses setFont:[UIFont fontWithName:@"AvenirNext-Regular" size:14]];
    [self.buttonNoOfClasses setFrame:CGRectMake(xPosition2, yPosition, width, width)];
    self.buttonNoOfClasses.layer.cornerRadius = width/2;
    self.buttonNoOfClasses.layer.masksToBounds = YES;
    self.buttonNoOfClasses.layer.borderColor = [UIColor blackColor].CGColor;
    self.buttonNoOfClasses.layer.borderWidth = 1.0;
        [self.buttonNoOfClasses setBackgroundColor:[UIColor redColor]];
    [self.contentView addSubview:self.buttonNoOfClasses];

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

- (IBAction)buttonBack:(id)sender {
}
@end
