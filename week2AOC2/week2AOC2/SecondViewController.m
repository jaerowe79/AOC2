//
//  SecondViewController.m
//  week2AOC2
//
//  Created by Janis Jae on 10/30/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //custom initialization
    }
    return self;
}

-(IBAction)onClick:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
