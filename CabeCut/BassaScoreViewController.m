//
//  BassaScoreViewController.m
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import "BassaScoreViewController.h"
#import "ViewController.h"
#import <Social/Social.h>

@interface BassaScoreViewController ()

@end

@implementation BassaScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self loadAdMobInterstitial];
    });
    
    
    scoreLabel.text = [NSString stringWithFormat:@"%d",scorenumber];
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
    NSLog(@"interstitial error");
}

// Twitter
-(void)postToTwitter{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]){
        SLComposeViewController* tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"text"];
//        [tweetSheet addImage:postImage];
        [tweetSheet addURL:[NSURL URLWithString:@"http://qiita.com/WizowozY"]];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    CGRect rect = [[UIScreen mainScreen] bounds];
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextFillRect(ctx, rect);
    [self.view.layer renderInContext:ctx];
    NSData *data = UIImagePNGRepresentation(UIGraphicsGetImageFromCurrentImageContext());
    UIImage *capture = [UIImage imageWithData:data];
    UIGraphicsEndImageContext();
}


@end
