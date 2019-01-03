//
//  CustomSlider.m
//  CustomSlider
//
//  Created by Miguel Vieira on 03/01/2019.
//  Copyright © 2019 Miguel Vieira. All rights reserved.
//

#import "TapSlider.h"

@implementation TapSlider

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
         UITapGestureRecognizer* recognizer = [UITapGestureRecognizer.alloc initWithTarget:self action:@selector(SliderWasTapped:)];
        [self addGestureRecognizer: recognizer];
    }
    return self;
}

-(void)SliderWasTapped:(UITapGestureRecognizer *)sender
{
    CGPoint locationOnSlider = [sender locationInView:self];
    float maxValue = self.frame.size.width;
    float touchLocationRatio = locationOnSlider.x * 100 / maxValue;
    
    self.value = touchLocationRatio/100;
}
