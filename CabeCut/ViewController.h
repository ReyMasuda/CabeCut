//
//  ViewController.h
//  CabeCut
//
//  Created by Toru Masuda on 2014/11/15.
//  Copyright (c) 2014年 Rey Masuda. All rights reserved.
//

int number; //乱数を入れておく変数。2画面で共有するため、グローバルに宣言
int scorenumber;
IBOutlet UILabel *scoreLabel;
int scoretweet;

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController{
    int number;
    int cut;
    IBOutlet UILabel *label;
    IBOutlet UIImageView *cabeView;
    IBOutlet UIButton *hiddenbt;
    IBOutlet UIButton *reloadbt;
    SystemSoundID sound_1;
    float time;
    NSTimer *timer;
    IBOutlet UILabel *timeLabel;

}

@property (nonatomic,retain) CMMotionManager *motionManager;

-(IBAction)cabeButton;
-(IBAction)ReloadButton;
-(IBAction)menuBt;

-(void)up;




@end
