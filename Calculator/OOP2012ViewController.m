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

-(void)name:(int)number{
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@%d",display.text,number];
            break;
        case 1:
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+number*pow(10, -n)];
            box = display.text;
            n = n +1;
            break;
    }
}

-(void)select{
    storage = display.text;
    display.text=@"";
    self->pointButton.enabled = YES;
    pointFlug = 0;
    n=1;
}


- (IBAction)AllClear:(id)sender {
    display.text = @"";
    n=1;
    pointFlug = 0;
    self->pointButton.enabled = YES;
    
}

- (IBAction)One:(id)sender {
    [self name:1];
  }
- (IBAction)Two:(id)sender {
    [self name:2];
    }

- (IBAction)Three:(id)sender {
    [self name:3];
}

- (IBAction)Four:(id)sender {
    [self name:4];
}

- (IBAction)Five:(id)sender {
    [self name:5];
}

- (IBAction)Six:(id)sender {
    [self name:6];
}

- (IBAction)Seven:(id)sender {
    [self name:7];
}

- (IBAction)Eight:(id)sender {
    [self name:8];
}

- (IBAction)Nine:(id)sender {
    [self name:9];
}

- (IBAction)Zero:(id)sender {
    [self name:0];
}



- (IBAction)minus:(id)sender {
    operation = Minus;
    [self select];
}
- (IBAction)plus:(id)sender {
    operation = Plus;
    [self select];
    }

- (IBAction) dividebutton:(id)sender {
    operation = Divide;
    [self select];
   }

- (IBAction)multiplybutton:(id)sender {
    operation = Multiply;
    [self select];
}

- (IBAction) equalsbutton {
    statemachine.save = display.text;
    switch(operation) {
        case Plus :
            display.text= [self calculate:Plus];
            break;
        case Minus:
            display.text= [self calculate:Minus];
            break;
        case Divide:
            display.text= [self calculate:Divide];
            break;
        case Multiply:
            display.text= [self calculate:Multiply];
            break;
    }
    
    pointFlug = 0;
    n=1;
}

- (NSString *)calculate:(int)operater{
    NSString *val = display.text;
    switch (operation) {
        case Plus :
            return [NSString stringWithFormat:@"%g",[val doubleValue]+[storage doubleValue]];
        case Minus:
            return [NSString stringWithFormat:@"%g",[storage doubleValue]-[val doubleValue]];
        case Divide:
            return [NSString stringWithFormat:@"%g",[storage doubleValue]/[val doubleValue]];
        case Multiply:
            return [NSString stringWithFormat:@"%g",[val doubleValue]*[storage doubleValue]];
    }
}

- (IBAction)point:(id)sender {
    box = display.text;
    pointFlug = 1;
    self->pointButton.enabled = NO;
}
/*
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
*/

@end
