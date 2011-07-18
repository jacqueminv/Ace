//
//  AceViewController.m
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import "AceViewController.h"
#import "AceView.h"

@interface AceViewController ()
- (void) flip:(UITapGestureRecognizer *)sender;
@end


@implementation AceViewController

- (void)dealloc
{
    [_frontside release];
    _frontside = nil;
    [_backside release];
    _backside = nil;
    [super dealloc];
}

#pragma mark - View lifecycle


- (void)loadView
{
    front = YES;
    self.wantsFullScreenLayout = YES;
      
    _frontside = [[AceView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];

    _backside = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    UIGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(flip:)];
    [_frontside addGestureRecognizer:tap];
    [tap release];
    
    tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(flip:)];
    [_backside addGestureRecognizer:tap];
    [tap release];
    
    self.view = _frontside;
    
}

#pragma mark - Event handling

- (void) flip:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded) {
        
        if (front) {
        
            [UIView transitionFromView:_frontside toView:_backside duration:1 options:UIViewAnimationOptionTransitionFlipFromLeft completion:NULL];
            front = NO;
            
        } else {
            
            [UIView transitionFromView:_backside toView:_frontside duration:1 options:UIViewAnimationOptionTransitionFlipFromRight completion:NULL];
            front = YES;
            
        }
        
    }
}

@end