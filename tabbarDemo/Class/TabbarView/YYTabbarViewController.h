//
//  YYTabbarViewController.h
//  tabbarDemo
//
//  Created by Y杨定甲 on 16/10/24.
//  Copyright © 2016年 damai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYTabbarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *containerView;

@property (strong, nonatomic) NSString *destinationIdentifier;//当前点击的tabbar Item 的identifier
@property (weak,nonatomic) UIViewController *destinationViewController;//类似于上面的功能
@property (strong, nonatomic) UIViewController *oldViewController;
@end
