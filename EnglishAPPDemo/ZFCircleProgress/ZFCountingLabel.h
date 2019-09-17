//
//  ZFCountingLabel.h
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/16.
//  Copyright © 2019 org.csu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZFCountingLabel : UILabel
// time of animation
@property (nonatomic, assign) CGFloat duration;

- (void)countingFrom:(CGFloat)fromValue to:(CGFloat)toValue;
- (void)countingFrom:(CGFloat)fromValue to:(CGFloat)toValue duration:(CGFloat)duration;
@end

NS_ASSUME_NONNULL_END
