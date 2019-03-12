//
//  UIImage+Drawing.h
//  UIBezierPathAddClipExampleForLI
//
//  Created by Volodymyr Andriienko on 3/10/19.
//  Copyright © 2019 VAndrJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage(Drawing)

- (UIImage *)imageWithClipping;
- (UIImage *)imageWithCropping;

@end

NS_ASSUME_NONNULL_END
