//
//  ViewController.h
//  Calculator
//
//  Created by iD Student on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    float firstNumber;
    float secondNumber;
    BOOL op;
    int operation;
}
- (IBAction)getNumber:(id)sender;
- (IBAction)getOperator:(id)sender;
- (IBAction)doMath:(id)sender;
- (IBAction)Clear:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *Answer;

@end
