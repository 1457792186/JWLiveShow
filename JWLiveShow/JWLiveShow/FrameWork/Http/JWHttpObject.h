//
//  HttpObject.h
//  YuWa
//
//  Created by Tian Wei You on 16/8/8.
//  Copyright © 2016年 Shanghai DuRui Information Technology Company. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum JWHttpType{
    JWHttpType
    
}kJWHttpType;

@interface JWHttpObject : NSObject
#pragma mark - Singleton
+ (id)manager;

//Get无Hud请求
- (void)getNoHudWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail;

//Post请求
- (void)postDataWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail;

//Post无Hud请求
- (void)postNoHudWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail;

//上传照片
- (void)postPhotoWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail withPhoto:(NSData *)photo;


@end
