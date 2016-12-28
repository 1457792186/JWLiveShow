//
//  UserSession.m
//  NewVipxox
//
//  Created by 蒋威 on 16/8/31.
//  Copyright © 2016年 蒋威. All rights reserved.
//

#import "UserSession.h"

#define AUTOLOGIN    @"autoLogin"            //自动登录账号
#define AUTOLOGINCODE   @"autoLoginCode"     //自动登录密码
#define KUSERDEFAULT [NSUserDefaults standardUserDefaults]
@implementation UserSession
static UserSession * user=nil;

+(UserSession*)shareUserSession{
    if (!user) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            user=[[UserSession alloc]init];
        });
        user.token=@"";
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [UserSession getDataFromUserDefault];
        });
    }
    
    return user;
}


+(void)clearUser{
    [UserSession saveUserLoginWithAccount:@"" withPassword:@""];
    user = nil;
    user=[[UserSession alloc]init];
    user.token=@"";
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [UserSession getDataFromUserDefault];
    });
}

+ (void)saveUserLoginWithAccount:(NSString *)account withPassword:(NSString *)password{
    user.account = account;
    [KUSERDEFAULT setValue:account forKey:AUTOLOGIN];
    user.password = password;
    [KUSERDEFAULT setValue:password forKey:AUTOLOGINCODE];
}

//get local saved data
+ (void)getDataFromUserDefault{
    NSString * accountDefault = [KUSERDEFAULT valueForKey:AUTOLOGIN];
    if (accountDefault) {
        if ([accountDefault isEqualToString:@""])return;
        user.account = accountDefault;
        user.password = [KUSERDEFAULT valueForKey:AUTOLOGINCODE];
        [UserSession autoLoginRequestWithPragram:@{@"tel":user.account,@"pwd":user.password}];//根据接口改2333333
    }
}

//auto login
+ (void)autoLoginRequestWithPragram:(NSDictionary *)pragram{
//    [[HttpObject manager]getDataWithType:(kMaldivesType)MaldivesType_Login withPragram:pragram success:^(id responsObj) {
//        MyLog(@"Pragram is %@",pragram);
//        MyLog(@"Data is %@",responsObj);
    [UserSession saveUserInfoWithDic:@{}];
//        [UserSession saveUserInfoWithDic:responsObj[@"data"]];
//    } failur:^(id responsObj, NSError *error) {
//        MyLog(@"Pragram is %@",pragram);
//        MyLog(@"Data Error error is %@",responsObj);
//        MyLog(@"Error is %@",error);
//    }];
}

+ (void)saveUserInfoWithDic:(NSDictionary *)dataDic{
//    user.collection = dataDic[@"collection"];
//    user.newinfo = [NSString stringWithFormat:@"%@",dataDic[@"new_info"]];
//    if (![dataDic[@"sex"] isKindOfClass:[NSNull class]]) {
//        user.sex = dataDic[@"sex"];
//    }
//    user.logo = dataDic[@"logo"];
//    user.point = dataDic[@"point"];
//    user.token = dataDic[@"token"];
//    user.name = dataDic[@"user"];
//    if (![dataDic[@"name"] isKindOfClass:[NSNull class]]) {
//        user.realName = dataDic[@"name"];
//    }
//    if (![dataDic[@"email"] isKindOfClass:[NSNull class]]) {
//        user.email = dataDic[@"email"];
//    }
//    if (![dataDic[@"birthday"] isKindOfClass:[NSNull class]]) {
//        user.birthday = dataDic[@"birthday"];
//    }
//    if (![dataDic[@"city"] isKindOfClass:[NSNull class]]) {
//        user.city = dataDic[@"city"];
//    }
//    user.mobile = dataDic[@"mobile"];
//    user.userid = dataDic[@"userid"];
    
    
    user.isLogin = YES;
}


@end
