//
//  FreeScoreViewController.m
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import "FreeScoreViewController.h"
#import "ViewController.h"
#import <Social/Social.h>

@interface FreeScoreViewController ()

@end

@implementation FreeScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
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
    interstitial_.adUnitID = @"ca-app-pub-3285273497958910/6014979187";
    interstitial_.delegate = self;
    [interstitial_ loadRequest:[GADRequest request]];
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad {
    [interstitial_ presentFromRootViewController:self];
}

- (void)interstitial:(GADInterstitial *)ad didFailToReceiveAdWithError:(GADRequestError *)error{
    NSLog(@"interstitial erorr");
}

// Twitter
-(IBAction)twitterBt{
    CGRect rect = [[UIScreen mainScreen] bounds];
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextFillRect(ctx, rect);
    [self.view.layer renderInContext:ctx];
    NSData *data = UIImagePNGRepresentation(UIGraphicsGetImageFromCurrentImageContext());
    UIImage *capture = [UIImage imageWithData:data];
    UIGraphicsEndImageContext();
    
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]){
        SLComposeViewController* tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"text"];
        [tweetSheet addImage:capture];
        [tweetSheet addURL:[NSURL URLWithString:@""]];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }

}




@end
