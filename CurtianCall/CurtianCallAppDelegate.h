//
//  CurtianCallAppDelegate.h
//  CurtianCall
//
//  Created by Mike Bobiney on 3/30/11.
//  Copyright 2011 NA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurtianCallAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
