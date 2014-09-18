//
//  ODAppDelegate.m
//  SchemeExample
//
//  Created by Hernan Zalazar on 9/18/14.
//  Copyright (c) 2014 Overmind. All rights reserved.
//

#import "ODAppDelegate.h"

@implementation ODAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"STARTED_FROM_URL_NOTIF" object:nil];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"STARTED_FROM_URL_NOTIF" object:nil userInfo:@{@"url": url}];
    return YES;
}
@end
