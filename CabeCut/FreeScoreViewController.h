//
//  FreeScoreViewController.h
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADInterstitial.h"
#import "GADInterstitialDelegate.h"
#import <Social/Social.h>
#import <Twitter/Twitter.h>

@interface FreeScoreViewController : UIViewController<GADInterstitialDelegate>{
    int number;
    
    IBOutlet UILabel *scoreLabel;
    
    GADInterstitial *interstitial_;
}

@end
