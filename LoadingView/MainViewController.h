//
//  MainViewController.h
//  LoadingView
//
//  Created by Mitul on 05/10/14.
//  Copyright (c) 2014 vishva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (strong ,nonatomic) IBOutlet UIButton *btnShowLoading;

-(IBAction)onClickShowLoading:(id)sender;

@end
