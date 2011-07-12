//
//  AceView.m
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import "AceView.h"

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
        _topLeftNumber.frame = CGRectMake(15, 30, 25, 25);
        _topLeftHeart = [[UIImageView alloc] initWithImage:self.heart];
        _topLeftHeart.frame = CGRectMake(15, 60, 25, 25);
        
        _bottomRightNumber = self.cardNumber;
        
        
        [self addSubview:_topLeftNumber];
        [self addSubview:_topLeftHeart];
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
