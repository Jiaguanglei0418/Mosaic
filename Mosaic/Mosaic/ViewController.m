//
//  ViewController.m
//  Mosaic
//
//  Created by jiaguanglei on 16/1/5.
//  Copyright © 2016年 roseonly. All rights reserved.
//

#import "ViewController.h"

#import "GLMasaicUtils.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView *image;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _image = [self setupImageView];
    [self.view addSubview:_image];


}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"2.jpg" ofType:nil];
    _image.image = [GLMasaicUtils transToMosaicImage:[UIImage imageWithContentsOfFile:path] blockLevel:4];
}

- (UIImageView *)setupImageView
{
    UIImageView *image = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    image.backgroundColor = [UIColor redColor];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"2.jpg" ofType:nil];
    image.image = [UIImage imageWithContentsOfFile:path];
 
    return image;
}

@end
