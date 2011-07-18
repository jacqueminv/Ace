//
//  AceView.m
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import "AceView.h"
#import <math.h>
#import <QuartzCore/QuartzCore.h>

@interface AceView ()

@property (nonatomic, readonly) NSString* heartImagePath;
@property (nonatomic, readonly) UIImage* heart;
@property (nonatomic, readonly) UILabel* cardNumber;

@end


@implementation AceView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {        
        _centerHeart = [[UIImageView alloc] initWithImage:self.heart];
        _centerHeart.center = CGPointMake(frame.origin.x + frame.size.width / 2, 
                                          frame.origin.y + frame.size.height / 2);
        
        _topLeftNumber = self.cardNumber;
        _topLeftNumber.frame = CGRectMake(frame.origin.x + 15, 
                                          frame.origin.y + 30, 
                                          25, 
                                          25);
        _topLeftHeart = [[UIImageView alloc] initWithImage:self.heart];
        _topLeftHeart.frame = CGRectMake(frame.origin.x + 15, 
                                         frame.origin.y + 60, 
                                         25, 
                                         25);
        
        CGAffineTransform reverse = CGAffineTransformMakeRotation(M_PI);
        _bottomRightNumber = self.cardNumber;
        _bottomRightNumber.transform = reverse;
        _bottomRightNumber.frame = CGRectMake(frame.origin.x + frame.size.width - 40,
                                              frame.origin.y + frame.size.height - 55,
                                              25,
                                              25);
        _bottomRightHeart = [[UIImageView alloc] initWithImage:self.heart];
        _bottomRightHeart.transform = reverse;
        _bottomRightHeart.frame = CGRectMake(frame.origin.x + frame.size.width - 40,
                                             frame.origin.y + frame.size.height - 85,
                                             25,
                                             25);

        [self addSubview:_topLeftNumber];
        [self addSubview:_topLeftHeart];
        [self addSubview:_bottomRightNumber];
        [self addSubview:_bottomRightHeart];
        [self addSubview:_centerHeart];
    }
    return self;
}

- (void)dealloc
{
    [_centerHeart release];
    _centerHeart = nil;
    _topLeftNumber = nil;
    [_topLeftHeart release];
    _topLeftHeart = nil;
    _bottomRightNumber = nil;
    
    [super dealloc];
}

- (NSString*) heartImagePath
{
    return [[NSBundle mainBundle] pathForResource:@"heart" ofType:@"png"];
}

- (UIImage*) heart
{
    return [UIImage imageWithContentsOfFile:self.heartImagePath];
}

- (UILabel*) cardNumber
{
    UILabel* ace = [[[UILabel alloc] init] autorelease];
    ace.text = @"A";
    ace.textColor = [UIColor redColor];
    ace.font = [UIFont fontWithName:@"Times New Roman" size:34];
    
    return ace;
}

@end
