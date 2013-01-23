//
//  OOP2012ViewController.h
//  Calculator
//
//  Created by 橋本　直幸 on 12/10/23.
//  Copyright (c) 2012年 Naoyuki Hashimoto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"

//typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;
@interface OOP2012ViewController : UIViewController
{
    IBOutlet UITextField *display;
    NSString *storage;
    NSString *box;
    CalcOperation operation;
    __weak IBOutlet UIButton *pointButton;
}

@property(readonly)  StateMachine* statemachine;


- (IBAction)AllClear:(id)sender;
- (IBAction)One:(id)sender;
- (IBAction)Two:(id)sender;
- (IBAction)Three:(id)sender;
- (IBAction)Four:(id)sender;
- (IBAction)Five:(id)sender;
- (IBAction)Six:(id)sender;
- (IBAction)Seven:(id)sender;
- (IBAction)Eight:(id)sender;
- (IBAction)Nine:(id)sender;
- (IBAction)Zero:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction) equalsbutton;
- (IBAction)point:(id)sender;

- (NSString *)calculate:(int)operater;

@end
