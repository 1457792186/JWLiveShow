//
//  YWLocation.h
//  YuWa
//
//  Created by Tian Wei You on 16/9/23.
//  Copyright © 2016年 Shanghai DuRui Information Technology Company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface JWLocation : NSObject

@property (nonatomic,assign)CGFloat lat;
@property (nonatomic,assign)CGFloat lon;
@property (nonatomic,assign)CLLocationCoordinate2D coordinate;

+ (instancetype)shareLocation;
+ (void)saveLocationInfoWithLat:(CGFloat)lat withLon:(CGFloat)lon;

@end
