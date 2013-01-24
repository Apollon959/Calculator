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
    int n;
    NSString *box;
}

-(void)nClear;
-(void)setBox:(NSString*)realnum;

-(NSString*)ten:(int)number
           flug:(int)pointFlug
           pull:(NSString*)answer;

- (NSString *)calculate:(NSString*)val
                 before:(NSString*)storage
                    key:(int)operaion;



@end
