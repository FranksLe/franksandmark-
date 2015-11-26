//
//  YellowView.m
//  move
//
//  Created by 郭金涛 on 15/11/13.
//  Copyright © 2015年 郭金涛. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(- 375, frame.size.height / 2, 1000, 1)];
        label.backgroundColor = [UIColor blackColor];
        [self addSubview:label];
        
        UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width / 2, -667, 1, 2000)];
        label1.backgroundColor = [UIColor blackColor];
        [self addSubview:label1];
        
    }
    return self;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 创建触摸对象
    // 取出集合中元素 因为集合中只有一个元素
    UITouch *touch = [touches anyObject];
    // 获得当前手指开始触摸的点
    self.startPoint = [touch locationInView:self];
    self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(- 375, self.startPoint.y, 1000, 1)];
    self.label2.backgroundColor = [UIColor redColor];
    //
    self.label3 = [[UILabel alloc] initWithFrame:CGRectMake(self.startPoint.x, -667, 1, 2000)];
    self.label3.backgroundColor = [UIColor redColor];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 创建移动触摸对象
    UITouch *touch = [touches anyObject];
    // 得到移动的点
    CGPoint newPoint = [touch locationInView:self];
    // 计算x轴移动距离
    CGFloat dx = newPoint.x - self.startPoint.x;
    // 计算y轴移动距离
    CGFloat dy = newPoint.y - self.startPoint.y;
    self.center = CGPointMake(self.center.x + dx, self.center.y +dy);
    [self addSubview:self.label2];
    [self addSubview:self.label3];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.label2.frame = CGRectMake(0, 0, 0, 0);
    self.label3.frame = CGRectMake(0, 0, 0, 0);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
