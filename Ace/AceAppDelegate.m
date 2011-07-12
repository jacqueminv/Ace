//
//  AceAppDelegate.m
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import "AceAppDelegate.h"

#import "AceViewController.h"

@implementation AceAppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
