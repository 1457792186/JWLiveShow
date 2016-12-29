//
//  UserSession.h
//  NewVipxox
//
//  Created by 蒋威 on 16/8/31.
//  Copyright © 2016年 蒋威. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserSession : NSObject

@property(nonatomic,strong)NSString*token;

@property (nonatomic,copy)NSString * account;  //账户
@property (nonatomic,copy)NSString * password;   //密码
@property(nonatomic,strong)NSString*rand;
@property(nonatomic,strong)NSString*qq;     //QQ
@property(nonatomic,strong)NSString*areaid;   //区id
@property(nonatomic,strong)NSString*statu;     //状态
@property(nonatomic,strong)NSString*currency; //货币
@property(nonatomic,strong)NSString*personality;   //个人签名





//已经登录
@property(nonatomic,assign)BOOL isLogin;   //是否登录


+ (UserSession*)shareUserSession;  //创建单例
+ (void)clearUser;   //退出登录 删除数据

+ (void)saveUserLoginWithAccount:(NSString *)account withPassword:(NSString *)password;  //save login data

+ (void)saveUserInfoWithDic:(NSDictionary *)dataDic;//save user data


@end
