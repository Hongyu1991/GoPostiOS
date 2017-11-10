//
//  SCPost.h
//  GoPost
//
//  Created by Chester H. Yang on 11/9/17.
//  Copyright © 2017 Hongyu Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface SCPost : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, strong) NSDate *postDate;
@property (nonatomic, strong) CLLocation *location;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end

