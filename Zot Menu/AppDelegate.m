//
//  AppDelegate.m
//  Zot Menu
//
//  Created by Kay Lab on 3/3/15.
//  Copyright (c) 2015 Emily Nguyen. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    CGRect bounds = self.window.bounds;
    
    // Create home screen view and add it to the window.
    UIView *view = [[UIView alloc] initWithFrame:bounds];
    view.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:view];
    
    // CGRectMake parameters
    int width = 100;
    int height;
    float xPos = (view.frame.size.width - width) / 2;
    int yPos;
    
    // Create Zot Menu title label and add it to the home screen.
    yPos = 75;
    height = 50;
    
    CGRect labelFrame = CGRectMake(xPos, yPos, width, height);
    UILabel* label = [[UILabel alloc] initWithFrame: labelFrame];
    label.text = @"ZOT MENU";
    [view addSubview:label];
    
    // Button height and frame
    height = 30;
    
    // Create Brandywine button and add it to the home screen.
    yPos = 175;
    
    CGRect buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"Brandywine" forState:UIControlStateNormal];
    button1.frame = buttonFrame;
    [view addSubview:button1];
    
    // Create Pippin button and add it to the home screen.
    yPos = 250;
    
    buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setTitle:@"Pippin" forState:UIControlStateNormal];
    button2.frame = buttonFrame;
    [view addSubview:button2];
    
    // Create Lot 5 button and add it to the home screen.
    yPos = 325;
    
    buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setTitle:@"Lot 5" forState:UIControlStateNormal];
    button3.frame = buttonFrame;
    [view addSubview:button3];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
