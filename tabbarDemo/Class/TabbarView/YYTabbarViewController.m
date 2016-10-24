//
//  YYTabbarViewController.m
//  tabbarDemo
//
//  Created by Y杨定甲 on 16/10/24.
//  Copyright © 2016年 damai. All rights reserved.
//

#import "YYTabbarViewController.h"
#import "YYTabbarView.h"
#import "AppDelegate.h"
#import "MHTabBarSegue.h"

@interface YYTabbarViewController ()
@property (weak, nonatomic) IBOutlet YYTabbarView *customTabbarView;
//记录用户点击过的identifier
@property (nonatomic, strong) NSMutableDictionary *viewControllersByIdentifier;
@end

@implementation YYTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewControllersByIdentifier = [NSMutableDictionary dictionary];
    self.customTabbarView.backgroundColor = [UIColor colorWithWhite:1 alpha:1];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    //自定义tabbar
    appDelegate.tabBarView = self.customTabbarView;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //默认选中首页
    if (self.childViewControllers.count < 1) {
        [self performSegueWithIdentifier:@"push1" sender:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if (![segue isKindOfClass:[MHTabBarSegue class]]) {
        [super prepareForSegue:segue sender:sender];
        return;
    }
    
    self.oldViewController = self.destinationViewController;
    
    //if view controller isn't already contained in the viewControllers-Dictionary
    if (![self.viewControllersByIdentifier objectForKey:segue.identifier]) {
        [self.viewControllersByIdentifier setObject:segue.destinationViewController forKey:segue.identifier];
    }
    
//    for (UIButton *aButton in self.buttons) {
//        [aButton setSelected:NO];
//    }
//    改变Item选中状态
//    UIButton *button = (UIButton *)sender;
//    [button setSelected:YES];
//    [self changeImageViewWithTag:button.tag];
    
    self.destinationIdentifier = segue.identifier;
    self.destinationViewController = [self.viewControllersByIdentifier objectForKey:self.destinationIdentifier];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
