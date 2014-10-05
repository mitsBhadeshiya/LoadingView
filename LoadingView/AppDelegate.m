//
//  AppDelegate.m
//  LoadingView
//
//  Created by Mitul on 05/10/14.
//  Copyright (c) 2014 vishva. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize viewControler;

+(AppDelegate *)sharedDelegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.viewControler = [[MainViewController alloc]initWithNibName:@"MainViewController" bundle:nil];
    self.window.rootViewController = self.viewControler;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)showLoadingView
{
    
    if (loadView == nil) {
		loadView = [[UIView alloc] initWithFrame:self.window.frame];
        loadView.opaque = NO;
        loadView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.3];
        
        CGRect windowFrm =self.window.frame;
        
        viewBack = [[UIView alloc] initWithFrame:CGRectMake(windowFrm.size.width/2 -65 , windowFrm.size.height/2 -20, 130, 40)];
        viewBack.backgroundColor = [UIColor blackColor];
        viewBack.alpha = 0.7f;
        viewBack.tag = 999;
        viewBack.layer.masksToBounds = NO;
        viewBack.layer.cornerRadius = 2;
        
        spinningWheel = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(10.0, 10.0, 20.0, 20.0)];
        spinningWheel.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
        [spinningWheel startAnimating];
        [viewBack addSubview:spinningWheel];
        
        UILabel *lblLoading = [[UILabel alloc] initWithFrame:CGRectMake(23, 5, 100, 25)];
        lblLoading.text = @"Loading...";
        lblLoading.backgroundColor = [UIColor clearColor];
        lblLoading.font = [UIFont systemFontOfSize:17.0f];
        lblLoading.textAlignment = NSTextAlignmentCenter;
        lblLoading.textColor = [UIColor whiteColor];
        
        [viewBack addSubview:lblLoading];
        [loadView addSubview:viewBack];
    }
    [self.window addSubview:loadView];
}

-(void)hideLoadingView
{
    [loadView removeFromSuperview];
    loadView = nil;
}



@end
