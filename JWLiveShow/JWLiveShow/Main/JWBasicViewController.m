//
//  JWBasicViewController.m
//  JWLiveShow
//
//  Created by TianWei You on 16/12/29.
//  Copyright © 2016年 Wei Jiang. All rights reserved.
//

#import "JWBasicViewController.h"

@interface JWBasicViewController ()

@end

@implementation JWBasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MBProgressHUD
- (void)showHUDWithStr:(NSString *)showHud withSuccess:(BOOL)isSuccess{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = showHud;
    if (isSuccess) {
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark.png"]];
    }
    
    hud.mode = MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:0.8];
}

- (void)backBarAction{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
