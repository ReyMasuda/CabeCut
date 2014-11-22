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
    number = 10;
    cut = 1;
    reloadbt.hidden = YES;
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



@end
