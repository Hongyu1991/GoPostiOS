//
//  SCPost.m
//  GoPost
//
//  Created by Chester H. Yang on 11/9/17.
//  Copyright © 2017 Hongyu Yang. All rights reserved.
//

#import "SCPost.h"

@implementation SCPost

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        self.name = dict[@"user"];
        self.message = dict[@"message"];
        CLLocationDegrees latitute = [dict[@"location"][@"lat"] doubleValue];
        CLLocationDegrees longtitude = [dict[@"location"][@"lon"] doubleValue];
        self.location = [[CLLocation alloc] initWithLatitude:latitute longitude:longtitude];
        return self;
    }
    return nil;
}

@end

