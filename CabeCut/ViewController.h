//
//  ViewController.h
//  CabeCut
//
//  Created by Toru Masuda on 2014/11/15.
//  Copyright (c) 2014年 Rey Masuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int number;
    IBOutlet UILabel *label;
    
}

-(IBAction)cabeButton;
-(IBAction)ReloadButton;


@end
