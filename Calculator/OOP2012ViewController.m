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
    self->pointButton.hidden = NO;
}

- (IBAction)One:(id)sender {
     display.text=[NSString stringWithFormat:@"%@1",display.text];
  }
- (IBAction)Two:(id)sender {
           switch (pointFlug) {
        case 0:
              display.text=[NSString stringWithFormat:@"%@2",display.text];
            break;
           case 1:
                
               display.text= [NSString stringWithFormat:@"%f",[box longLongValue]+2*pow(10, -n)];
               n = n +1;
               break;
               
               /*
               display.text=[NSString stringWithFormat:@"%@%s",display.text,2*pow(10,(-n))];
               n = n +1;
                */
    }
}

- (IBAction)Three:(id)sender {
    display.text=[NSString stringWithFormat:@"%@3",display.text];}

- (IBAction)Four:(id)sender {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)Five:(id)sender {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)Six:(id)sender {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)Seven:(id)sender {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)Eight:(id)sender {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)Nine:(id)sender {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction)Zero:(id)sender {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}



- (IBAction)minus:(id)sender {
    
    operation = Minus;
    storage = display.text;
    display.text=@"";
    self->pointButton.hidden = NO;
    pointFlug = 0;
    n=1;
}
- (IBAction)plus:(id)sender {
    
    operation = Plus;
    storage = display.text;
    display.text=@"";
    self->pointButton.hidden = NO;
    pointFlug = 0;
    n=1;
}

- (IBAction) dividebutton:(id)sender {
    
    operation = Divide;
    storage = display.text;
    display.text=@"";
    self->pointButton.hidden = NO;
    pointFlug = 0;
    n=1;
}

- (IBAction)multiplybutton:(id)sender {
    
    operation = Multiply;
    storage = display.text;
    display.text=@"";
    self->pointButton.hidden = NO;
    pointFlug = 0;
    n=1;
}

- (IBAction) equalsbutton {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
    pointFlug = 0;
    n=1;
}

- (IBAction)point:(id)sender {
    box = display.text;

    pointFlug = 1;
    self->pointButton.hidden = YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
