//
//  RadionBtn.m
//  TestObjectBen
//
//  Created by PW on 15/4/14.
//  Copyright (c) 2015年 PW. All rights reserved.
//

#import "RadionBtn.h"

@interface RadionBtn()
{
    UIButton *_lastBtn;
}
@end

@implementation RadionBtn

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)setDatas:(NSArray *)datas
{
    _datas = datas;
    
    for (NSInteger index = 0; index < datas.count; index++) {
        [self createBtn:datas[index] index:index];
    }
}


- (void)setSelectIndex:(NSInteger)selectIndex
{
    _selectIndex = selectIndex;
    
    if (selectIndex > _datas.count) {
        return;
    }
    UIButton *btn = self.subviews[selectIndex-1];
    [btn setBackgroundColor:[UIColor orangeColor]];
    _lastBtn = btn;
}

- (void)createBtn:(NSString *)title index:(NSInteger)index
{
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnCliceked:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTag:index];
    [self addSubview:btn];
}

- (void)btnCliceked:(UIButton *)btn
{
    [_lastBtn setBackgroundColor:[UIColor clearColor]];
    
    [btn setBackgroundColor:[UIColor orangeColor]];
    
    _lastBtn = btn;
    
    if ([_delegate respondsToSelector:@selector(radionBtn:index:)]) {
        [_delegate radionBtn:self index:btn.tag];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSInteger count = _datas.count;
    
    CGFloat y = 0;
    CGFloat h = self.bounds.size.height;
    CGFloat w = self.bounds.size.width / count;
    
    for (NSInteger index = 0; index < count; index ++) {
        UIButton *btn = self.subviews[index];
        CGFloat x = w * index;
        btn.frame = CGRectMake(x, y, w, h);
    }
    
}

@end
