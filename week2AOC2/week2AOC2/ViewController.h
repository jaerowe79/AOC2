//
//  ViewController.h
//  week2AOC2
//
//  Created by Janis Jae on 10/30/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

typedef enum{Plus} CalcOperation;

@interface ViewController : UIViewController
{
    IBOutlet UISwitch *onSwitch; // on/off switch
    IBOutlet UITextField *display;  // calculator display
    int mySum; // sum of numbers
    int myNum; // number entered
    NSString *storage;
    CalcOperation operation;
}


// value changed response for segment control 
-(IBAction)onChange:(id)sender;

// click response
-(IBAction)onClick:(id)sender;

// switch
-(IBAction)onSwitched:(id)sender;

//number key pressed
- (IBAction)numberPressed:(id)sender;

// clear button pressed
- (IBAction)clearPressed:(id)sender;

// add button pressed
- (IBAction)addOperation:(id)sender;

// equals button pressed
- (IBAction)equalsButton:(id)sender;

@end
