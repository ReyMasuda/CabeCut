//
//  BassaBassaViewController.h
//  CabeCut
//
//  Created by ReyMasuda on 2015/03/23.
//  Copyright (c) 2015年 Rey Masuda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface BassaBassaViewController : UIViewController{
    int number;
    int cut;
    IBOutlet UILabel *label;
    IBOutlet UIImageView *cabeView;
    IBOutlet UIButton *hiddenbt;
    IBOutlet UIButton *reloadbt;
    SystemSoundID sound_1;
}

-(IBAction)cabeButton;
-(IBAction)ReloadButton;
-(IBAction)menuBt;
-(IBAction)scoreBt;

@end
