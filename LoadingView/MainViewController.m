//
//  MainViewController.m
//  LoadingView
//
//  Created by Mitul on 05/10/14.
//  Copyright (c) 2014 vishva. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)onClickShowLoading:(id)sender
{
    [[AppDelegate sharedDelegate]showLoadingView];
    [self performSelector:@selector(hideLoading) withObject:nil afterDelay:2.0];
}

-(void)hideLoading
{
    [[AppDelegate sharedDelegate]hideLoadingView];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
