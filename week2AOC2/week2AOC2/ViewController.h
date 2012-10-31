//
//  ViewController.h
//  week2AOC2
//
//  Created by Janis Jae on 10/30/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UISwitch *switchOne;
    IBOutlet UILabel *label;
    IBOutlet UISegmentedControl *changeBackgroundColor;
    int backgroundColor;
    
}

typedef enum
{
    PINK,
    BLUE,
    GREEN
}backgroundColor;

// value changed response
-(IBAction)onChange:(id)sender;

// click response
-(IBAction)onClick:(id)sender;

// switch
-(IBAction)onSwitched:(id)sender;

//clear button
-(IBAction)clearPressed;

//equal button
- (IBAction)equalsPressed;

//plus button
- (IBAction)calculatePressed:(id)sender;

// numbers buttons
- (IBAction)numberPressed:(UIButton *)sender;

@end
