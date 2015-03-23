//
//  BassaScoreViewController.m
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import "BassaScoreViewController.h"

@interface BassaScoreViewController ()

@end

@implementation BassaScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadAdMobInterstitial];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadAdMobInterstitial{
    interstitial_ = [[GADInterstitial alloc] init];
    interstitial_.adUnitID = @"ca-app-pub-3285273497958910/4677846784";
    interstitial_.delegate = self;
    [interstitial_ loadRequest:[GADRequest request]];
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad {
    [interstitial_ presentFromRootViewController:self];
}

- (void)interstitial:(GADInterstitial *)ad didFailToReceiveAdWithError:(GADRequestError *)error{
    NSLog(@"interstitial erorr");
}


@end
