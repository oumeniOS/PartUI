//
//  WWTabBarController.m
//  PartUI
//
//  Created by yxw.gome on 2018/12/11.
//  Copyright © 2018年 gome. All rights reserved.
//

#import "WWTabBarController.h"
#import "HomeViewController.h"
#import "WWNavigationController.h"

@interface WWTabBarController ()

@end

@implementation WWTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUpAllChildViewController];
}

- (void)setUpAllChildViewController {
    HomeViewController *home = [[HomeViewController alloc]init];
    [self setUpOneChildViewController:home image:[UIImage imageNamed:@"TabBarHomeNormal"] selectedImage:[UIImage imageNamed:@"TabBarHomeNormal"] title:@"home"];
}

- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title{
    vc.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    WWNavigationController *nav = [[WWNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
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
