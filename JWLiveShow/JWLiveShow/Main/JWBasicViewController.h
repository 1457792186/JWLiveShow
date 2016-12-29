//
//  JWBasicViewController.h
//  JWLiveShow
//
//  Created by TianWei You on 16/12/29.
//  Copyright © 2016年 Wei Jiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScrollView+JWGifRefresh.h"
#import "UIBarButtonItem+SettingCustom.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "JWTools.h"
#import "JWHttpAddress.h"
#import "JWHttpObject.h"

@interface JWBasicViewController : UIViewController

- (void)showHUDWithStr:(NSString *)showHud withSuccess:(BOOL)isSuccess;
- (void)backBarAction;


@end
