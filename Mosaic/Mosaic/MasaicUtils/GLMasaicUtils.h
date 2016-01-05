//
//  GLMasaicUtils.h
//  Mosaic
//
//  Created by jiaguanglei on 16/1/5.
//  Copyright © 2016年 roseonly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>


@interface GLMasaicUtils : NSObject

+ (UIImage *)transToMosaicImage:(UIImage*)orginImage blockLevel:(NSUInteger)level;


@end
