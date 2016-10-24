//
//  YYTabbarView.m
//  tabbarDemo
//
//  Created by Y杨定甲 on 16/10/24.
//  Copyright © 2016年 damai. All rights reserved.
//

#import "YYTabbarView.h"

@implementation YYTabbarView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    UIButton *huButton = (UIButton *)[self viewWithTag:10000];
    CGPoint hitPoint = [huButton convertPoint:point fromView:self];
    if ([huButton pointInside:hitPoint withEvent:event] && self.hidden == NO)
    {
        return huButton;
    }
    else
    {
        return [super hitTest:point withEvent:event];
    }
}

@end
