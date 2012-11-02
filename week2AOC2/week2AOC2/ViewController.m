//
//  ViewController.m
//  week2AOC2
//
//  Created by Janis Jae on 10/30/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    onSwitch.on =  true;  //defaults on switch to on position
    
    [super viewDidAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // default display
    display.text = @"0";
}

// info button to change to second view
-(IBAction)onClick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName: @"SecondView" bundle:nil];
    if (secondView != nil)
    {
        [self presentModalViewController:secondView animated:true];
    }
}

// on/off switch 
-(IBAction)onSwitched:(id)sender
{
    UISwitch *oneSwitch = (UISwitch*)sender;
    
    if (oneSwitch != nil)
    {
        if (oneSwitch.on)
        {
            display.text = @"0"; // default display and values
            mySum = 0;
            myNum = 0;
        }
        else
        {
            display.text = @"OFF";
        }
    }
}

// segmented control at the bottom when changed, changes background color 
-(IBAction)onChange:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if(segmentControl != nil)
    {
        int selectedIndex = segmentControl.selectedSegmentIndex;
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor colorWithRed:0.961 green:0.271 blue:0.545 alpha:1]; /*#f5458b*/ // first segment pink background
        }
        else if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor colorWithRed:0.271 green:0.616 blue:0.961 alpha:1]; /*#459df5*/  // second segment blue background 
        } 
        else if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor colorWithRed:0.251 green:0.871 blue:0.325 alpha:1]; /*#40de53*/  // third segment green background 
        }
        else
        {
            // Do Nothing
        }
    }
}

// number key pressed
-(IBAction)numberPressed:(id)sender
{
    if (onSwitch.on != false) // verifies calculator on
    {
        UIButton *num = (UIButton*)sender;
        if (num != nil)
        {
            myNum = num.tag; //stores number pressed 
            display.text = [display.text stringByAppendingFormat:@"%d", myNum]; 
        }
    }
}


// plus key pressed
-(void)addOperation:(id)sender
{
    if (onSwitch.on != false) // verifies calculator on
    {
        operation = Plus;  
        storage = display.text;
        display.text=@""; // clears screen between numbers entered in operation
    }
}

- (void) equalsbutton:(id)sender {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi", [val longLongValue]+[storage longLongValue]];  //should add numbers together once equal pressed 
            break;
    }
}

// clear key pressed
- (IBAction) clearPressed:(id)sender {
    if (onSwitch.on != false) // verifies calculator on
    {
        UIButton *clearPressed = (UIButton*)sender;
        if (clearPressed != nil)
        {
            mySum = 0;
            myNum = 0;
            display.text = @"0";
        }
    }
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
