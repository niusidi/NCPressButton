//
//  NCPressButton.m
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 TSINOVA. All rights reserved.
//

#import "NCPressButton.h"
#import "UIImage+NCPressButtonAdditions.h"
#import "UIColor+NCPressButtonAdditions.h"

@implementation NCPressButton

#pragma mark
#pragma mark Touches
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self changeFrameToState:UIControlStateHighlighted];
    [self changeColorToState:UIControlStateHighlighted];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    [self changeFrameToState:UIControlStateNormal];
    [self changeColorToState:UIControlStateNormal];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesCancelled:touches withEvent:event];
    [self changeFrameToState:UIControlStateNormal];
    [self changeColorToState:UIControlStateNormal];
}

#pragma mark
#pragma Set Methods
- (void)setPressButtonImage:(UIImage *)pressButtonImage
{
    _pressButtonImage = pressButtonImage;
    [self setImage:pressButtonImage forState:UIControlStateNormal];
    [self setImage:pressButtonImage forState:UIControlStateHighlighted];
    
    if (self.pressButtonImageColor)
    {
        [self setImage:[pressButtonImage imageWithTintColor:self.pressButtonImageColor] forState:UIControlStateNormal];
        [self setImage:[pressButtonImage imageWithTintColor:[self.pressButtonImageColor darkerColorForColor]] forState:UIControlStateHighlighted];
    }
}

- (void)setPressButtonCornerRadius:(CGFloat)pressButtonCornerRadius
{
    self.layer.cornerRadius = pressButtonCornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setPressButtonImageColor:(UIColor *)pressButtonImageColor
{
    _pressButtonImageColor = pressButtonImageColor;
}

#pragma mark
#pragma Change Status Methods
- (void)changeFrameToState:(UIControlState)state
{
    [UIView beginAnimations:@"viewScale" context:nil];
    [UIView setAnimationDuration:0.15];
    
    CGFloat viewScale = 0.99;
    if (_pressButtonImage)
    {
        viewScale = 0.90;
    }
    
    CGAffineTransform textViewTransform = CGAffineTransformScale(self.transform, viewScale, viewScale);
    if (state == UIControlStateNormal)
    {
        textViewTransform = CGAffineTransformScale(self.transform, 1.0/viewScale, 1.0/viewScale);
    }
    [self setTransform:textViewTransform];
    [UIView commitAnimations];
}

- (void)changeColorToState:(UIControlState)state
{
    CATransition *animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [animation setDuration:0.1];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [self.layer addAnimation:animation forKey:@"Button"];
    if (state == UIControlStateNormal)
    {
        self.layer.backgroundColor = [self.backgroundColor lighterColorForColor].CGColor;
        return;
    }
    self.layer.backgroundColor = [self.backgroundColor darkerColorForColor].CGColor;
}

@end
