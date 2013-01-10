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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int n=1;
int pointFlug = 0;
int x;

- (IBAction)AllClear:(id)sender {
display.text = @"";
    n=1;
    pointFlug = 0;
    self->pointButton.enabled = YES;
}

- (IBAction)One:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@1",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+1*pow(10, -n)];
            box = display.text;
            n = n +1;
            break;    }

  }
- (IBAction)Two:(id)sender {
    
           switch (pointFlug) {
        case 0:
              display.text=[NSString stringWithFormat:@"%@2",display.text];
            break;
        case 1:
                
               display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+2*pow(10, -n)];
               box = display.text;
               n = n +1;
               break;   }
}

- (IBAction)Three:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@3",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+3*pow(10, -n)];
            box = display.text;
            n = n +1;
            break;
                }
}

- (IBAction)Four:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@4",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+4*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }
}

- (IBAction)Five:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@5",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+5*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }
}

- (IBAction)Six:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@6",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+6*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }
}

- (IBAction)Seven:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@7",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+7*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }
}

- (IBAction)Eight:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@8",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+8*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }
}

- (IBAction)Nine:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@9",display.text];
            break;
        case 1:
            
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+9*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }}

- (IBAction)Zero:(id)sender {
    switch (pointFlug) {
        case 0:
            display.text=[NSString stringWithFormat:@"%@0",display.text];
            break;
        case 1:
            display.text= [NSString stringWithFormat:@"%g",[box doubleValue]+0*pow(10, -n)];
            box = display.text;
            n = n +1;
        break;   }
}



- (IBAction)minus:(id)sender {
    
    operation = Minus;
    storage = display.text;
    display.text=@"";
    self->pointButton.enabled = YES;
    pointFlug = 0;
    n=1;
}
- (IBAction)plus:(id)sender {
    
    operation = Plus;
    storage = display.text;
    display.text=@"";
    self->pointButton.enabled = YES;
    pointFlug = 0;
    n=1;
}

- (IBAction) dividebutton:(id)sender {
    
    operation = Divide;
    storage = display.text;
    display.text=@"";
    self->pointButton.enabled = YES;
    pointFlug = 0;
    n=1;
}

- (IBAction)multiplybutton:(id)sender {
    
    operation = Multiply;
    storage = display.text;
    display.text=@"";
    self->pointButton.enabled = YES;
    pointFlug = 0;
    n=1;
}

- (IBAction) equalsbutton {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%g",[val doubleValue]+[storage doubleValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%g",[storage doubleValue]-[val doubleValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%g",[storage doubleValue]/[val doubleValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%g",[val doubleValue]*[storage doubleValue]];
            break;
    }
    pointFlug = 0;
    n=1;
}

- (IBAction)point:(id)sender {
    box = display.text;
    pointFlug = 1;
    self->pointButton.enabled = NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
