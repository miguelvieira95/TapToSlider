//
//  CustomSlider.m
//  CustomSlider
//
//  Created by Miguel Vieira on 03/01/2019.
//  Copyright © 2019 Miguel Vieira. All rights reserved.
//

#import "TapSlider.h"

@implementation TapSlider

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self SetupTouchInputs];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self SetupTouchInputs];
    }
    return self;
}

-(void)SetupTouchInputs
{
    UITapGestureRecognizer* recognizer = [UITapGestureRecognizer.alloc initWithTarget:self action:@selector(SliderWasTapped:)];
    [self addGestureRecognizer: recognizer];
}

-(void)SliderWasTapped:(UITapGestureRecognizer *)sender
{
    CGPoint locationOnSlider = [sender locationInView:self];
    float maxWidth = self.frame.size.width;
    float touchLocationRatio = locationOnSlider.x * self.maximumValue / maxWidth;
    
    self.value = touchLocationRatio;
}

@end
