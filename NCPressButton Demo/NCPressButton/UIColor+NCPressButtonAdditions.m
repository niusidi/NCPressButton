//
//  UIColor+NCPressButtonAdditions.m
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 TSINOVA. All rights reserved.
//

#import "UIColor+NCPressButtonAdditions.h"

@implementation UIColor (NCPressButtonAdditions)

- (UIColor *)lighterColorForColor
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
    {
        if (r == 0 && g == 0 && b == 0)
        {
            return [UIColor colorWithRed:0 green:0 blue:0 alpha:a];
        }
        return [UIColor colorWithRed:MIN(r + 0.1, 1.0) green:MIN(g + 0.1, 1.0) blue:MIN(b + 0.1, 1.0) alpha:a];
    }
    return nil;
}

- (UIColor *)darkerColorForColor
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
    {
        if (r == 1 && g == 1 && b == 1)
        {
            return [UIColor colorWithRed:1 green:1 blue:1 alpha:a];
        }
        return [UIColor colorWithRed:MAX(r - 0.1, 0.0) green:MAX(g - 0.1, 0.0) blue:MAX(b - 0.1, 0.0) alpha:a];
    }
    return nil;
}

@end
