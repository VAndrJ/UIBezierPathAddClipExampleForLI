//
//  UIImage+Drawing.m
//  UIBezierPathAddClipExampleForLI
//
//  Created by Volodymyr Andriienko on 3/10/19.
//  Copyright © 2019 VAndrJ. All rights reserved.
//

#import "UIImage+Drawing.h"

@implementation UIImage(Drawing)

- (UIImage *)imageWithClipping {
    let imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
    let path = [UIBezierPath bezierPathWithOvalInRect:imageRect];
    UIGraphicsBeginImageContext(self.size);
    [path addClip];
    [self drawInRect:imageRect];
    let image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (UIImage *)imageWithCropping {
    let imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
    let path = [UIBezierPath bezierPathWithRoundedRect:imageRect cornerRadius:self.size.height / 10];
    let cropPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(30, 30, 130, 130)];
    [path appendPath:[cropPath bezierPathByReversingPath]];
    UIGraphicsBeginImageContext(self.size);
    [path addClip];
    [self drawInRect:imageRect];
    let image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
