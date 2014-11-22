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

@implementation ViewController : UIViewController{
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    number = 10;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)cabeButton{
    number=number -1;
    label.text = [NSString stringWithFormat:@"%d",number];
    if (number=number -1) {
        UIImage *image1 = [UIImage imageNamed:@"cabe1"];
    }
    
    if (number=number -1) {
        UIImage *image2 = [UIImage imageNamed:@"cabe2"];
    }
    
    if (number=number -1) {
        UIImage *image3 = [UIImage imageNamed:@"cabe3"];
    }
    
    if (number=number -1) {
        UIImage *image4 = [UIImage imageNamed:@"cabe4"];
    }
    
    if (number=number -1) {
        UIImage *image5 = [UIImage imageNamed:@"cabe5"];
    }
    
    if (number=number -1) {
        UIImage *image6 = [UIImage imageNamed:@"cabe6"];
    }
    
    if (number=number -1) {
        UIImage *image7 = [UIImage imageNamed:@"cabe7"];
    }
    
    if (number=number -1) {
        UIImage *image8 = [UIImage imageNamed:@"cabe8"];
    }
    
    if (number=number -1) {
        UIImage *image9 = [UIImage imageNamed:@"cabe9"];
    }
    
    if (number=number -1) {
        UIImage *image10 = [UIImage imageNamed:@"cabe10"];
    }
    
}

-(IBAction)ReloadButton{
    number=10;
    label.text = [NSString stringWithFormat:@"%d",number];
    
}



@end
