//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by 橋本　直幸 on 12/10/23.
//  Copyright (c) 2012年 Naoyuki Hashimoto. All rights reserved.
//

#import "CalculatorTests.h"


@implementation CalculatorTests

@synthesize statemachineTest;

- (void)setUp{
    [super setUp];
}
- (void)tearDown{
     [super tearDown];
}



//"＝"ボタンを押したときに計算するので、計算に用いた引数を持ってきて
//ansと比較してテストする。
- (void)testEqualAction
{
    
    statemachineTest = [[StateMachine alloc] init];

    NSString* ans = [statemachineTest calculate:@"1" before:@"2" key:Plus];//一桁の足し算
    STAssertEqualObjects(@"3", ans, @"Plusの挙動がおかしいです。");
    NSString* ans2 = [statemachineTest calculate:@"11" before:@"19" key:Plus];//二桁の足し算
    STAssertEqualObjects(@"30", ans2, @"Plusの挙動がおかしいです。");
    NSString* ans3 = [statemachineTest calculate:@"6050" before:@"14050" key:Plus];//桁数の多い足し算
    STAssertEqualObjects(@"20100", ans3, @"Plusの挙動がおかしいです。");
    NSString* ans4 = [statemachineTest calculate:@"-1" before:@"2" key:Plus];//負の数への足し算
    STAssertEqualObjects(@"1", ans4, @"Plusの挙動がおかしいです。");
    
    NSString* ans5 = [statemachineTest calculate:@"1" before:@"5" key:Minus];//一桁の引き算
    STAssertEqualObjects(@"4", ans5, @"Minusの挙動がおかしいです。");
    NSString* ans6 = [statemachineTest calculate:@"20" before:@"30" key:Minus];//二桁の引き算
    STAssertEqualObjects(@"10", ans6, @"Minusの挙動がおかしいです。");
    NSString* ans7 = [statemachineTest calculate:@"2" before:@"1" key:Minus];//答えが負になる
    STAssertEqualObjects(@"-1", ans7, @"Minusの挙動がおかしいです。");
    NSString* ans8 = [statemachineTest calculate:@"2" before:@"-1" key:Minus];//負の数からの引き算
    STAssertEqualObjects(@"-3", ans8, @"Minusの挙動がおかしいです。");
    
    NSString* ans9 = [statemachineTest calculate:@"2" before:@"6" key:Divide];//一桁のわり算
    STAssertEqualObjects(@"3", ans9, @"Divideの挙動がおかしいです。");
    NSString* ans10 = [statemachineTest calculate:@"12" before:@"132" key:Divide];//桁数の多いわり算
    STAssertEqualObjects(@"11", ans10, @"Divideの挙動がおかしいです。");
    NSString* ans11 = [statemachineTest calculate:@"3" before:@"-9" key:Divide];//負の値からの割り算
    STAssertEqualObjects(@"-3", ans11, @"Divideの挙動がおかしいです。");
    
    NSString* ans12 = [statemachineTest calculate:@"2" before:@"3" key:Multiply];//一桁のかけ算
    STAssertEqualObjects(@"6", ans12, @"Multiplyの挙動がおかしいです。");
    NSString* ans13 = [statemachineTest calculate:@"20" before:@"13" key:Multiply];//桁数の多いかけ算
    STAssertEqualObjects(@"260", ans13, @"Multiplyの挙動がおかしいです。");
    NSString* ans14 = [statemachineTest calculate:@"-2" before:@"3" key:Multiply];//負の値へのかけ算
    STAssertEqualObjects(@"-6", ans14, @"Multiplyの挙動がおかしいです。");
}


//小数点を含んだ計算
- (void)testPointInEqualAction
{
 statemachineTest = [[StateMachine alloc] init];

    NSString* ans = [statemachineTest calculate:@"1.1" before:@"2.2" key:Plus];//小数点を含む足し算
    STAssertEqualObjects(@"3.3", ans, @"Plusの挙動がおかしいです。");
    
    NSString* ans2 = [statemachineTest calculate:@"1.1" before:@"2.2" key:Minus];//小数点を含む引き算
    STAssertEqualObjects(@"1.1", ans2, @"Minusの挙動がおかしいです。");
    
    NSString* ans3 = [statemachineTest calculate:@"1.1" before:@"2.2" key:Divide];//小数点を含む数同士の割り算
    STAssertEqualObjects(@"2", ans3, @"Divideの挙動がおかしいです。");
    NSString* ans4 = [statemachineTest calculate:@"2" before:@"2.2" key:Divide];//小数点を含む数から整数でわり算
    STAssertEqualObjects(@"1.1", ans4, @"Divideの挙動がおかしいです。");
    
    NSString* ans5 = [statemachineTest calculate:@"1.1" before:@"2.2" key:Multiply];//小数点を含む数同士のかけ算
    STAssertEqualObjects(@"2.42", ans5, @"Multiplyの挙動がおかしいです。");
    NSString* ans6 = [statemachineTest calculate:@"2" before:@"2.2" key:Multiply];//小数点を含む数と整数でかけ算
    STAssertEqualObjects(@"4.4", ans6, @"Multiplyの挙動がおかしいです。");

}


@end
