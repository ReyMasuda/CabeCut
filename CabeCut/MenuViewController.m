//
//  MenuViewController.m
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import "MenuViewController.h"
#import "GAIDictionaryBuilder.h"
#import "GAI.h"


@interface MenuViewController ()

@end

@implementation MenuViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.screenName = @"トップ画面";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bassaPushed:(id)sender {
    [self sendToGoogleAnalytics:@"BassaBassa"];
    [self performSegueWithIdentifier:@"BassaBassa" sender:nil];
}

- (IBAction)timePushed:(id)sender {
    [self sendToGoogleAnalytics:@"TimeTrial"];
    [self performSegueWithIdentifier:@"TimeTrial" sender:nil];
}

- (void)sendToGoogleAnalytics:(NSString *)label {
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder
                    createEventWithCategory:@"イベント発生！"
                    action:@"ボタンが押されました。"
                    label:label
                    value:nil] build]];
}

    
    
@end
