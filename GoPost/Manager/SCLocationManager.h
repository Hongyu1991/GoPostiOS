//
//  SCLocationManager.h
//  GoPost
//
//  Created by Chester H. Yang on 11/11/17.
//  Copyright © 2017 Hongyu Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CLLocation;

extern NSString * const SCLocationUpdateNotification;

@interface SCLocationManager : NSObject

+ (instancetype)sharedManager;
- (void)getUserPermission;
+ (BOOL)isLocationServicesEnabled;
- (void)startLoadUserLocation;
- (void)stopLoadUserLocation;
- (CLLocation *)getUserCurrentLocation;

@end
