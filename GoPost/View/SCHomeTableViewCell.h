//
//  SCHomeTableViewCell.h
//  GoPost
//
//  Created by Chester H. Yang on 11/10/17.
//  Copyright © 2017 Hongyu Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCPost;

@interface SCHomeTableViewCell : UITableViewCell

- (void)loadCellWithPost:(SCPost *)post;
+ (CGFloat)cellHeight;

@end

