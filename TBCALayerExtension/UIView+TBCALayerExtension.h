//
//  UIView+TBCALayerExtension.h
//  KuaiYiXiao
//
//  Created by tangbin on 16/8/6.
//  Copyright © 2016年 POSUN-MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TBCALayerExtension)
//* 边线颜色 */
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
//* 边线宽度 */
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
//* 圆角半径 */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@end
