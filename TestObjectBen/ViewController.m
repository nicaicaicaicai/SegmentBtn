//
//  ViewController.m
//  TestObjectBen
//
//  Created by PW on 15/4/14.
//  Copyright (c) 2015年 PW. All rights reserved.
//

#import "ViewController.h"
#import "RadionBtn.h"


@interface ViewController ()
<RadionBtnDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RadionBtn *radionBtn = [[RadionBtn alloc] init];
    radionBtn.backgroundColor = [UIColor purpleColor];
    radionBtn.datas = @[@"1",
                        @"2",
                        @"3"];
    radionBtn.selectIndex = 3;
    radionBtn.delegate = self;
    radionBtn.frame = CGRectMake(0, 100, self.view.bounds.size.width, 30);
    [self.view addSubview:radionBtn];
    
    
}

- (void)radionBtn:(RadionBtn *)radionBtn index:(NSInteger)index
{
    NSLog(@"%zd",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
