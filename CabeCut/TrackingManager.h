//
//  TrackingManager.h
//  CabeCut
//
//  Created by ReyMasuda on 2015/05/30.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

@interface TrackingManager : NSObject

// スクリーン名計測用メソッド
+ (void)sendScreenTracking:(NSString *)screenName;

// イベント計測用メソッド
+ (void)sendEventTracking:(NSString *)category action:(NSString *)action label:(NSString *)label value:(NSNumber *)value;

@end
