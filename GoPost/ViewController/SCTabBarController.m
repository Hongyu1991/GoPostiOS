//
//  SCTabBarController.m
//  GoPost
//
//  Created by Chester H. Yang on 11/10/17.
//  Copyright © 2017 Hongyu Yang. All rights reserved.
//

#import "SCTabBarController.h"
#import "SCHomeViewController.h"
#import "SCExploreViewController.h"
@interface SCTabBarController ()

@end

@implementation SCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewControllers = [self viewControllerArray];
    self.selectedIndex = 0;
}

- (NSArray <UIViewController *> *)viewControllerArray
{
    UIViewController *homeController = [self homeViewController];
    UIViewController *exploreController = [self exploreViewController];
    UIViewController *chesterController = [self chesterViewController];
    NSArray<UIViewController *> *array = @[homeController, exploreController, chesterController];
    return array;
}

- (UIViewController *)homeViewController
{
//    UIViewController *homeController = [[UIViewController alloc] init];
//    homeController.view.backgroundColor = [UIColor whiteColor];
//    homeController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"Events"] selectedImage:[UIImage imageNamed:@"Events_Selected"]];
//    homeController.tabBarItem.tag = 0;
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeController];
//    return navigationController;
    
    SCHomeViewController *homeViewController = [[SCHomeViewController alloc] initWithNibName:NSStringFromClass([SCHomeViewController class]) bundle:nil];
    homeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Home", nil) image:[UIImage imageNamed:@"Events"] selectedImage:[UIImage imageNamed:@"Events_selected"]];
    homeViewController.tabBarItem.tag = 0;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    return navigationController;
}

- (UIViewController *)exploreViewController
{
//    UIViewController *exploreController = [[UIViewController alloc] init];
//    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:[UIImage imageNamed:@"Explore"] selectedImage:[UIImage imageNamed:@"Explore_Selected"]];
//    exploreController.tabBarItem.tag = 1;
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:exploreController];
//    return navigationController;
    SCExploreViewController *exploreController = [SCExploreViewController new];
    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:[UIImage imageNamed:@"Explore"] selectedImage:[UIImage imageNamed:@"Explore_selected"]];
    exploreController.tabBarItem.tag = 1;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:exploreController];
    return navigationController;
}

- (UIViewController *) chesterViewController
{
    UIViewController *chesterController = [[UIViewController alloc] init];
    chesterController.view.backgroundColor = [UIColor orangeColor];
    chesterController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Chester" image:[UIImage imageNamed:@"CFace"] selectedImage:[UIImage imageNamed:@"CFace"]];
    chesterController.tabBarItem.tag = 2;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:chesterController];
    return navigationController;
}

@end
