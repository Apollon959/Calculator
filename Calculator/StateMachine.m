//
//  StateMachine.m
//  Calculator
//
//  Created by 橋本　直幸 on 13/01/17.
//  Copyright (c) 2013年 Naoyuki Hashimoto. All rights reserved.
//

#import "StateMachine.h"
@implementation StateMachine

- (NSString *)calculate:(NSString*)val
                 before:(NSString*)storage
                    key:(int)ope
{
    NSLog(@"val:%@",val);
    NSLog(@"storage:%@",storage);
    NSLog(@"ope:%d",ope);
    switch (ope) {
        case Plus :
            return [NSString stringWithFormat:@"%g",[val doubleValue]+[storage doubleValue]];
        case Minus:
            return [NSString stringWithFormat:@"%g",[storage doubleValue]-[val doubleValue]];
        case Divide:
            return [NSString stringWithFormat:@"%g",[storage doubleValue]/[val doubleValue]];
        case Multiply:
            return [NSString stringWithFormat:@"%g",[val doubleValue]*[storage doubleValue]];
    }
    return NULL;
}


-(NSString*)ten:(int)number
           flug:(int)pointFlug
           pull:(NSString*)answer
{
    switch (pointFlug) {
        case 0:
            answer=[NSString stringWithFormat:@"%@%d",answer,number];
            break;
        case 1:
            answer= [NSString stringWithFormat:@"%g",[box doubleValue]+number*pow(10, -n)];
            box = answer;
            NSLog(@"box:%f",[box doubleValue]);
            n = n + 1;
            break;
    }
    return answer;
}

-(void)nClear{
    n = 1;
}

-(void)setBox:(NSString*)realnum{
    box = realnum;
}

@end
