//
//  HttpObject.m
//  YuWa
//
//  Created by Tian Wei You on 16/8/8.
//  Copyright © 2016年 Shanghai DuRui Information Technology Company. All rights reserved.
//

#import "JWHttpObject.h"
#import "JWHttpManger.h"

@implementation JWHttpObject
+ (id)manager{
    return [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static JWHttpObject *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [super allocWithZone:zone];
        [JWHttpManger shareManager];
    });
    return manager;
}

- (void)getNoHudWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail{
    NSString * urlStr = HTTP_ADDRESS;
    switch (type) {
        case  JWHttpType:
            urlStr = [NSString stringWithFormat:@"%@%@",HTTP_ADDRESS,@""];
            break;
            
            //URLStr建立
        default:
            break;
    }
    [[JWHttpManger shareManager] getDatasNoHudWithUrl:urlStr withParams:pragram compliation:^(id data, NSError *error) {
        if (data&&[data[@"errorCode"] integerValue] == 0) {
            success(data);
        }else{
            fail(data,error);
        }
    }];
}

- (void)postDataWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail{
    NSString * urlStr = HTTP_ADDRESS;
    switch (type) {
        case  JWHttpType:
            urlStr = [NSString stringWithFormat:@"%@%@",HTTP_ADDRESS,@""];
            break;
            
           //URLStr建立
        default:
            break;
    }
    [[JWHttpManger shareManager] postDatasWithUrl:urlStr withParams:pragram compliation:^(id data, NSError *error) {
        if (data&&[data[@"errorCode"] integerValue] == 0) {
            success(data);
        }else{
            fail(data,error);
        }
    }];
}

- (void)postNoHudWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail{
    NSString * urlStr = HTTP_ADDRESS;
    switch (type) {
        case  JWHttpType:
            urlStr = [NSString stringWithFormat:@"%@%@",HTTP_ADDRESS,@""];
            break;
            
            //URLStr建立
        default:
            break;
    }
    [[JWHttpManger shareManager] postDatasNoHudWithUrl:urlStr withParams:pragram compliation:^(id data, NSError *error) {
        if (data&&[data[@"errorCode"] integerValue] == 0) {
            success(data);
        }else{
            fail(data,error);
        }
    }];
}


- (void)postPhotoWithType:(kJWHttpType)type withPragram:(NSDictionary *)pragram success:(void(^)(id responsObj))success failur:(void(^)(id errorData,NSError *error))fail withPhoto:(NSData *)photo{
    NSString * urlStr = HTTP_ADDRESS;
    switch (type) {
        case  JWHttpType:
            urlStr = [NSString stringWithFormat:@"%@%@",HTTP_ADDRESS,@""];
            break;
            
        default:
            break;
    }
    [[JWHttpManger shareManager] postUpdatePohotoWithUrl:urlStr withParams:pragram withPhoto:photo compliation:^(id data, NSError *error) {
        if (data&&[data[@"errorCode"] integerValue] == 0) {
            success(data);
            
        }else{
            fail(data,error);
        }
    }];
}

@end
