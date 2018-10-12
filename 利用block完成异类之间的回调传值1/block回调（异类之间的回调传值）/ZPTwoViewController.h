//
//  ZPTwoViewController.h
//  block回调（异类之间的回调传值）
//
//  Created by apple on 16/7/5.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZPStudent;

//block函数的定义
typedef void (^TransferBlock) (ZPStudent *student);

@interface ZPTwoViewController : UIViewController

//把block函数作为本类的一个属性
@property (nonatomic, copy) TransferBlock transferBlock;

@end
