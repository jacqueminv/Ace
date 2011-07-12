//
//  AceAppDelegate.h
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AceViewController;

@interface AceAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AceViewController *viewController;

@end
