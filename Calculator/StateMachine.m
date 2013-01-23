//
//  StateMachine.m
//  Calculator
//
//  Created by 橋本　直幸 on 13/01/17.
//  Copyright (c) 2013年 Naoyuki Hashimoto. All rights reserved.
//

#import "StateMachine.h"
#import "OOP2012ViewController.h"
@implementation StateMachine

@synthesize save;

-(NSString*)name:(int)number{
    return NULL;
}
-(void)select{
    
}


- (NSString *)calculate:(int)operater{
    NSString *val = save;//display.textとsaveが同じ
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


@end
