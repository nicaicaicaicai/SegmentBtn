//
//  RadionBtn.h
//  TestObjectBen
//
//  Created by PW on 15/4/14.
//  Copyright (c) 2015年 PW. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RadionBtn;

@protocol RadionBtnDelegate <NSObject>

@optional

- (void)radionBtn:(RadionBtn *)radionBtn index:(NSInteger)index;

@end

@interface RadionBtn : UIView

/** 数据源 */
@property (nonatomic, strong) NSArray *datas;

/** 初始化选中的索引 */
@property (nonatomic, assign) NSInteger selectIndex;

/** 委托方法 */
@property (nonatomic, assign) id<RadionBtnDelegate> delegate;

@end
