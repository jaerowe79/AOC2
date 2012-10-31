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

-(IBAction)onClick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName: @"SecondView" bundle:nil];
    if (secondView != nil)
    {
        [self presentModalViewController:secondView animated:true];
    }
}


- (void)viewDidAppear:(BOOL)animated
{
    switchOne.on = false;
 
    [super viewDidAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
