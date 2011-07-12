//
//  AceViewController.m
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import "AceViewController.h"
#import "AceView.h"

@implementation AceViewController

- (void)dealloc
{
    [super dealloc];
}

#pragma mark - View lifecycle


- (void)loadView
{
    self.wantsFullScreenLayout = YES;
    
    AceView *view = [[AceView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view = view;
    [view release];
}

@end