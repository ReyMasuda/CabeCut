//
//  MenuViewController.m
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import "MenuViewController.h"
#import "TrackingManager.h"

@interface MenuViewController ()

@end

@implementation MenuViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // "トップ画面"が開かれたときのトラッキング情報を送る
    [TrackingManager sendGoogleAnalyticsTracking:@"トップ画面"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPushed:(id)sender {
    
    [TrackingManager sendEventTracking:@"Button" action:@"Push" label:@"お気に入り" value:nil screen:@"トップ画面"];
}
    
    
@end
