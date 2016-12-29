//
//  JWNavigationViewController.m
//  JWLiveShow
//
//  Created by TianWei You on 16/12/29.
//  Copyright © 2016年 Wei Jiang. All rights reserved.
//

#import "JWNavigationViewController.h"

@interface JWNavigationViewController ()

@end

@implementation JWNavigationViewController

- (void)viewDidLoad{
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    [self.navigationBar setBarTintColor:CNaviColor];
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed=YES;
        
        UIButton*button=[[UIButton alloc]init];
        [button setBackgroundImage:[UIImage imageNamed:@"back_9x16"] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"back_9x16"] forState:UIControlStateHighlighted];
        CGSize buttonSize =button.currentBackgroundImage.size;
        button.frame=CGRectMake(button.frame.origin.x, button.frame.origin.y, buttonSize.width, buttonSize.height);
        [button addTarget:self action:@selector(buttonBack) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem*leftItem=[[UIBarButtonItem alloc]initWithCustomView:button];
        viewController.navigationItem.leftBarButtonItem=leftItem;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)buttonBack{
    [self popViewControllerAnimated:YES];
}

- (UIViewController*)childViewControllerForStatusBarStyle{
    return self.topViewController;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    UIViewController*topVC=self.topViewController;
    return [topVC preferredStatusBarStyle];
}

@end
