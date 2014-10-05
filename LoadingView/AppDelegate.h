//
//  AppDelegate.h
//  LoadingView
//
//  Created by Mitul on 05/10/14.
//  Copyright (c) 2014 vishva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIView *loadView;
    UIView *viewBack;
    
    UIActivityIndicatorView *spinningWheel;
}
@property (strong, nonatomic) UIWindow *window;
@property( strong , nonatomic) MainViewController *viewControler;


+(AppDelegate *)sharedDelegate;

-(void)showLoadingView;
-(void)hideLoadingView;

@end
