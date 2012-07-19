//
//  ViewController.m
//  Calculator
//
//  Created by iD Student on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize Answer;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    
    [self setAnswer:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)getNumber:(id)sender {
    if(op == true)
    {
        secondNumber = secondNumber*10 + (float)[sender tag];
        Answer.text = [NSString stringWithFormat:@"%f", secondNumber];
        
    }

else {
    firstNumber = firstNumber*10 + (float)[sender tag];
    Answer.text = [NSString stringWithFormat:@"%f", firstNumber];
     }
}

- (IBAction)getOperator:(id)sender {
    operation = [sender tag];
    Answer.text = [NSString stringWithFormat:@""];
    op = true;
}

- (IBAction)doMath:(id)sender {
    switch (operation) {
        case 0:
            Answer.text = [NSString stringWithFormat:@"%f", (firstNumber + secondNumber)];
            break;
        case 1:
            Answer.text = [NSString stringWithFormat:@"%f", (firstNumber - secondNumber)];
            break;
        case 2:
            Answer.text = [NSString stringWithFormat:@"%f", (firstNumber * secondNumber)];
            break;
        case 3:
            Answer.text = [NSString stringWithFormat:@"%f", (firstNumber / secondNumber)];
            break;
    }
    op = false;
}

- (IBAction)Clear:(id)sender {
    Answer.text = [NSString stringWithFormat:@""];
    firstNumber = 0;
    secondNumber = 0;
    op = false;
}
@end
