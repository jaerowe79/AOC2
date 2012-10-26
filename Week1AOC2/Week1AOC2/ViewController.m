//
//  ViewController.m
//  Week1AOC2
//
//  Created by Janis Jae on 10/25/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ViewController.h"
#import "CostumeFactory.h"
#import "VampireCostume.h"
#import "WitchCostume.h"
#import "ZombieCostume.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    VampireCostume *vampireCostume = [[VampireCostume alloc] init];
    if (vampireCostume != nil)
    {
        [vampireCostume printName];
    }
    WitchCostume *witchCostume = [[WitchCostume alloc] init];
    if (witchCostume != nil)
    {
        [witchCostume printName];
    }
    ZombieCostume *zombieCostume = [[ZombieCostume alloc] init];
    if (zombieCostume != nil)
    {
        [zombieCostume printName];
    }
    
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
