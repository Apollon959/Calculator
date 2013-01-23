//
//  StateMachine.h
//  Calculator
//
//  Created by 橋本　直幸 on 13/01/17.
//  Copyright (c) 2013年 Naoyuki Hashimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{Plus,Minus,Multiply,Divide} CalcOperation;

@interface StateMachine : NSObject{
    CalcOperation operation;
    int n;
    NSString *box;
}

-(NSString*)ten:(int)number
           flug:(int)pointFlug
           pull:(NSString*)answer;
-(void)select;
- (NSString *)calculate:(NSString*)val
                 before:(NSString*)storage
                    key:(int)operaion;
-(void)nClear;
-(void)setBox:(NSString*)okamura;
@property NSString *save;

@end
