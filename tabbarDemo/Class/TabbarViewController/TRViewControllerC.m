//
//  TRViewControllerC.m
//  Demo_ UITabBarItem
//
//  Created by tarenaxin on 15-5-21.
//  Copyright (c) 2015年 Angel丶Tarena. All rights reserved.
//

#import "TRViewControllerC.h"

@interface TRViewControllerC ()

@end

@implementation TRViewControllerC

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
//    _ANC.title = @"i'm A";
//    [_BNC setTitle:@"i'm B"];
    self.navigationItem.title = @"i'm C";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
