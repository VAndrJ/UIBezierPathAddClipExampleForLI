//
//  ViewController.m
//  UIBezierPathAddClipExampleForLI
//
//  Created by Volodymyr Andriienko on 3/10/19.
//  Copyright © 2019 VAndrJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    let exampleImage = [UIImage imageNamed:@"photo"];
    [_imageView setImage:[exampleImage imageWithCropping]];
}

@end
