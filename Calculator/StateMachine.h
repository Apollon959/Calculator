//
//  StateMachine.h
//  Calculator
//
//  Created by 橋本　直幸 on 13/01/17.
//  Copyright (c) 2013年 Naoyuki Hashimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{ Plusmax,Minusmax,Multiplymax,Dividemax} CalcOperationMax;

@interface StateMachine : NSObject{
    NSString *storage;
    NSString *box;
    CalcOperationMax operation;
}

-(NSString*)name:(int)number;
-(void)select;

- (NSString *)calculate:(int)operater;

@property NSString *save;

@end
