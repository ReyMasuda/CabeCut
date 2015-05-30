//
//  BassaBassaViewController.m
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import "BassaBassaViewController.h"
#import "ViewController.h"

@interface BassaBassaViewController ()

@end

@implementation BassaBassaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    label.font = [UIFont fontWithName:@"HoboStd" size:60.0];
    
    number = 10;
    cut = 1;
    reloadbt.hidden = YES;
    
    //効果音ファイル読み込み
    NSString *path = [[NSBundle mainBundle] pathForResource:@"katana" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url), &sound_1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)menuBt{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    scorenumber = 0;
    number = 0;
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

- (BOOL)canBecomeFirstResponder {
    return YES;
}

// シェイク開始
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(number > 0){
    
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake)  {
        NSLog(@"Motion began");
    }
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
    }else{
        
    }
}

// シェイク完了
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
        NSLog(@"Motion ended");
    }
}

@end
