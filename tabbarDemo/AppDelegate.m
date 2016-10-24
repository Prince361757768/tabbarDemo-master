//
//  AppDelegate.m
//  tabbarDemo
//
//  Created by Y杨定甲 on 16/3/25.
//  Copyright © 2016年 damai. All rights reserved.
//

#import "AppDelegate.h"

#import "TRViewControllerA.h"
#import "TRViewControllerB.h"
#import "TRViewControllerC.h"


#define UIColorFromRGB(rgbValue)[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface AppDelegate ()
{
    UINavigationController *_ANC;
    UINavigationController *_BNC;
    UINavigationController *_CNC;
    TRViewControllerA *aVC;
    TRViewControllerB *bVC;
    TRViewControllerC *cVC;
}

@property (strong, nonatomic) UITabBarController *rootTabBarController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ///代码实现
//    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //初始化tabbar
    self.rootTabBarController = [[UITabBarController alloc]init];
    
    aVC = [[TRViewControllerA alloc]init];
    bVC = [[TRViewControllerB alloc]init];
    cVC = [[TRViewControllerC alloc]init];
    
    _ANC = [[UINavigationController alloc]initWithRootViewController:aVC];
    _BNC = [[UINavigationController alloc]initWithRootViewController:bVC];
    _CNC = [[UINavigationController alloc]initWithRootViewController:cVC];
    
    //加载顺序的问题  失效  需要在相应nav内部去修改值
    _ANC.title = @"i'm A";
    [_BNC setTitle:@"i'm B"];
    _CNC.navigationItem.title = @"i'm C";
    
    [_ANC.navigationBar setBarTintColor:UIColorFromRGB(0x4634B5)];
    
    _ANC.title = @"i'm A";
    [_BNC setTitle:@"i'm B"];
    _CNC.navigationItem.title = @"i'm C";
    
    _ANC.tabBarItem.title = @"AAA";
    _BNC.tabBarItem.title = @"BBB";
    _CNC.tabBarItem.title = @"CCC";
    
    
//    [self.rootTabBarController addChildViewController:_ANC];
//    [self.rootTabBarController addChildViewController:_BNC];
//    [self.rootTabBarController addChildViewController:_CNC];
    self.rootTabBarController.viewControllers = @[_ANC,_BNC,_CNC];
    
//    self.window.rootViewController = self.rootTabBarController;
//    [self.window makeKeyAndVisible];
    
    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
