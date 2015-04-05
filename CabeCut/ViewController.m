//
//  ViewController.m
//  CabeCut
//
//  Created by Toru Masuda on 2014/11/15.
//  Copyright (c) 2014年 Rey Masuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController : UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    label.font = [UIFont fontWithName:@"HoboStd" size:60.0];
    timeLabel.font = [UIFont fontWithName:@"HoboStd" size:25.0];
    time = 30.0;
    timeLabel.text = [NSString stringWithFormat:@"%.2f",time];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                             target:self
                                           selector:@selector(up)
                                           userInfo:nil
                                            repeats:YES];
    
    number = 10;
    cut = 1;
    reloadbt.hidden = YES;
    
    //効果音ファイル読み込み
    NSString *path = [[NSBundle mainBundle] pathForResource:@"katana" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url), &sound_1);
}

-(IBAction)cabeButton{
    number=number -1;
    cut = cut+1;
    label.text = [NSString stringWithFormat:@"%d",number];
    NSString *imagePath =[NSString stringWithFormat:@"cabe%d.png",cut];
    cabeView.image=[UIImage imageNamed:imagePath];
    if (number ==0) {
        hiddenbt.hidden = YES;
    }
    
    if (number == 0) {
        reloadbt.hidden = NO;
    }
    
     AudioServicesPlaySystemSound(sound_1);
    
    scorenumber=scorenumber +1;
}

-(IBAction)ReloadButton{
    number=10;
    label.text = [NSString stringWithFormat:@"%d",number];
    cabeView.image=[UIImage imageNamed:@"cabe1.png"];
    cut = 1;
    hiddenbt.hidden = NO;
    if (number ==10) {
        reloadbt.hidden = YES;
    }
}


-(void)up{
    time-= 0.01;
    timeLabel.text = [NSString stringWithFormat:@"%.2f",time];
    
    if (time < 0.0) {
        NSLog(@"%f",time);
         [timer invalidate];
        [self performSegueWithIdentifier:@"toScore" sender:self];
    }
    
}

-(IBAction)menuBt{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    scorenumber = 0;
    number = 0;
}

@end
