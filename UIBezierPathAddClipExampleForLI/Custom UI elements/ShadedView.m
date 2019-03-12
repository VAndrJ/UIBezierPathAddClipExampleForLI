//
//  ShadedView.m
//  UIBezierPathAddClipExampleForLI
//
//  Created by Volodymyr Andriienko on 3/10/19.
//  Copyright © 2019 VAndrJ. All rights reserved.
//

#import "ShadedView.h"

@implementation ShadedView

- (void)drawRect:(CGRect)rect {
    let path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [path addClip];
    [path removeAllPoints];
    var beginPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
    var endPoint = CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect));
    let shadeStep = 8;
    while (beginPoint.y < CGRectGetMaxY(rect)) {
        [path moveToPoint:beginPoint];
        [path addLineToPoint:endPoint];
        beginPoint.y += shadeStep;
        endPoint.y += shadeStep;
    }
    [[UIColor grayColor] setStroke];
    [path setLineWidth:3];
    [path stroke];
}

@end
