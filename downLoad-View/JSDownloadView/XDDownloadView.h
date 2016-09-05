//
//  #import "XDDownloadView.h"
//  downLoad-View
//
//  Created by 窦心东 on 16/9/5.
//  Copyright © 2016年 窦心东. All rights reserved.
//

#import <UIKit/UIKit.h>

#define XNColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

@interface XDDownloadView : UIControl
/**
 *  进度:0~1
 */
@property (nonatomic, assign) CGFloat progress;
/**
 *  进度宽
 */
@property (nonatomic, assign) CGFloat progressWidth;
/**
 *  停止动画
 */
- (void)stopAllAnimations;
/**
 *  block 形式点击回调
 */
//@property (nonatomic, strong) void (^ didClickBlock)();

@end
