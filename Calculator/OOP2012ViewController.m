//
//  OOP2012ViewController.m
//  Calculator
//
//  Created by 橋本　直幸 on 12/10/23.
//  Copyright (c) 2012年 Naoyuki Hashimoto. All rights reserved.
//

#import "OOP2012ViewController.h"


@interface OOP2012ViewController ()

@end

@implementation OOP2012ViewController

@synthesize statemachine;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    statemachine = [[StateMachine alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int n=1;
int pointFlug = 0;
int x;

-(void)select{
    storage = display.text;
    display.text=@"";
    pointFlug = 0;
    [statemachine nClear];
}

- (IBAction)AllClear:(id)sender {
    display.text = @"";
    [statemachine nClear];
    pointFlug = 0;
    self->pointButton.enabled = YES;
    
}

- (IBAction)One:(id)sender {
    display.text = [statemachine ten:1 flug:pointFlug pull:display.text];
    
  }

- (IBAction)Two:(id)sender {
    display.text = [statemachine ten:2 flug:pointFlug pull:display.text];
    }

- (IBAction)Three:(id)sender {
    display.text = [statemachine ten:3 flug:pointFlug pull:display.text];
}

- (IBAction)Four:(id)sender {
    display.text = [statemachine ten:4 flug:pointFlug pull:display.text];
}

- (IBAction)Five:(id)sender {
    display.text = [statemachine ten:5 flug:pointFlug pull:display.text];
}

- (IBAction)Six:(id)sender {
    display.text = [statemachine ten:6 flug:pointFlug pull:display.text];
}

- (IBAction)Seven:(id)sender {
    display.text = [statemachine ten:7 flug:pointFlug pull:display.text];
}

- (IBAction)Eight:(id)sender {
    display.text = [statemachine ten:8 flug:pointFlug pull:display.text];
}

- (IBAction)Nine:(id)sender {
    display.text = [statemachine ten:9 flug:pointFlug pull:display.text];
}

- (IBAction)Zero:(id)sender {
    display.text = [statemachine ten:0 flug:pointFlug pull:display.text];
}



- (IBAction)minus:(id)sender {
    operation = Minus;
    self->pointButton.enabled = YES;
    [self select];
}
- (IBAction)plus:(id)sender {
    operation = Plus;
    self->pointButton.enabled = YES;
    [self select];
    }

- (IBAction) dividebutton:(id)sender {
    operation = Divide;
    self->pointButton.enabled = YES;
    [self select];
   }

- (IBAction)multiplybutton:(id)sender {
    operation = Multiply;
    self->pointButton.enabled = YES;
    [self select];
}

- (IBAction) equalsbutton {
    display.text = [statemachine calculate:display.text before:storage key:operation];
    pointFlug = 0;
    [statemachine nClear];
}


- (IBAction)point:(id)sender {
    pointFlug = 1;
    [statemachine setBox:display.text];
    self->pointButton.enabled = NO;
}

@end
