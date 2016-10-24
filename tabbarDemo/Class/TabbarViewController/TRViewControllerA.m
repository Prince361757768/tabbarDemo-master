//
//  TRViewControllerA.m
//  Demo_ UITabBarItem
//
//  Created by tarenaxin on 15-5-21.
//  Copyright (c) 2015年 Angel丶Tarena. All rights reserved.
//

#import "TRViewControllerA.h"
#import "TRViewControllerB.h"
@interface TRViewControllerA ()

@end

@implementation TRViewControllerA

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"我是A";
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)pushB:(id)sender {
    TRViewControllerB *Bvc = [TRViewControllerB new];
    [self.navigationController pushViewController:Bvc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
