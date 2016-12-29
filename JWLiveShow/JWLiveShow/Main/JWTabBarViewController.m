//
//  JWTabBarViewController.m
//  JWLiveShow
//
//  Created by TianWei You on 16/12/29.
//  Copyright © 2016年 Wei Jiang. All rights reserved.
//

#import "JWTabBarViewController.h"
#import "JWHomeViewController.h"
#import "JWLiveViewController.h"
#import "JWPersonCenterViewController.h"
#import "JWNavigationViewController.h"

@interface JWTabBarViewController ()

@end

@implementation JWTabBarViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    [UITabBar appearance].tintColor = CNaviColor;
    [self addChildViewControllers];
}

-(void)addChildViewControllers{
    
    JWHomeViewController * homeVC = [[JWHomeViewController alloc]init];
    [self addChildVC:homeVC withTitle:@"首页" withImage:@"toolbar_home" withSelectedImage:@"toolbar_home_sel"];
    
    JWLiveViewController * liveVC=[[JWLiveViewController alloc]init];
    [self addChildVC:liveVC withTitle:@"直播" withImage:@"toolbar_live" withSelectedImage:@"toolbar_live"];
    
    JWPersonCenterViewController * pcVC = [[JWPersonCenterViewController alloc]init];
    [self addChildVC:pcVC withTitle:@"个人中心" withImage:@"toolbar_me" withSelectedImage:@"toolbar_me_sel"];
}

-(void)addChildVC:(UIViewController*)vc withTitle:(NSString*)title withImage:(NSString*)imageName withSelectedImage:(NSString*)selectedImageName{
    vc.tabBarItem.title=title;
    vc.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImageName];
    if ([vc isKindOfClass:[JWLiveViewController class]]) {
        vc.tabBarItem.image = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [vc.tabBarItem setImageInsets:UIEdgeInsetsMake(-8, 0, 8, 0)];//top = - bottom
    }
    JWNavigationViewController*navi=[[JWNavigationViewController alloc]initWithRootViewController:vc];
    [self addChildViewController:navi];
    
}

@end
