//
//  ViewController.m
//  ViewController
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

#import "ViewController.h"
#import <ADCIOSFramework/ACFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.curView = nil;
    self.ACVTabVC = [[ACVTableViewController alloc] init];
    self.ACVTabVC.delegate = self;
    self.ACVTabVC.tableView.rowHeight = 25;
    self.ACVTabVC.tableView.frame = CGRectMake(20,50, 350, 200);
    self.ACVTabVC.tableView.sectionFooterHeight = 5;
    self.ACVTabVC.tableView.sectionHeaderHeight = 5;
    self.ACVTabVC.tableView.scrollEnabled = YES;
    self.ACVTabVC.tableView.showsVerticalScrollIndicator = YES;
    self.ACVTabVC.tableView.userInteractionEnabled = YES;
    self.ACVTabVC.tableView.bounces = YES;
    [self.view addSubview:self.ACVTabVC.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) fromACVTable:(ACVTableViewController *) avcTabVc userSelectedJson: (NSString*) jsonStr
{
    ACRViewController* adcVc = [[ACRViewController alloc] init: jsonStr];
    if(self.curView)
        [self.curView removeFromSuperview];
    self.curView = adcVc.view;
    self.curView.frame = CGRectMake(20, 350, 350, 350);
    [self.view addSubview:adcVc.view];
}
@end
