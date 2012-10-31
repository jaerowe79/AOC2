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
    
}

-(IBAction)onChange:(id)sender;

-(IBAction)onClick:(id)sender;

-(IBAction)onSwitched:(id)sender;

@end
