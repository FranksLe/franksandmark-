//
//  ViewController.m
//  move
//
//  Created by 郭金涛 on 15/11/13.
//  Copyright © 2015年 郭金涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    YellowView *view = [[YellowView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    YellowView *view1 = [[YellowView alloc] initWithFrame:CGRectMake(150, 300, 100, 100)];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
