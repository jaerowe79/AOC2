//
//  ViewController.m
//  week3AOC2
//
//  Created by Janis Jae on 11/5/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(void) viewWillAppear:(BOOL)animated
{
    // cache the original size of the textView
    textViewFrame = textView.frame;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewWillAppear:(BOOL)animated];
}
-(void)keyboardWillShow:(NSNotification *)notification
{
    //get the width and height of the keyboard
    CGSize keyboardSize = [[[notification userInfo] objectForKey: UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    CGRect newFrame = CGRectMake(0.0f, textView.frame.origin.y, 320.0f, textView.frame.size.height - keyboardSize.height);
    
    [textView setFrame:newFrame];
}
-(void)keyboardWillHide:(NSNotification *)notification
{
    [textView setFrame:textViewFrame];
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if (button.tag == 0)
        {
            [textView resignFirstResponder];
        }
        else if (button.tag == 1)
        {
            NSString *tempString = textView.text;
            NSLog (@"%@", tempString);
        }
            
    }
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
