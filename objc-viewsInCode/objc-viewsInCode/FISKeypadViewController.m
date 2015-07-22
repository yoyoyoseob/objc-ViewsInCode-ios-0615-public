//
//  FISKeypadViewController.m
//  objc-viewsInCode
//
//  Created by Yoseob Lee on 7/21/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "FISKeypadViewController.h"
#import <Masonry/Masonry.h>
#import "FISKeypadButton.h"
#import <FontAwesomeKit/FontAwesomeKit.h>

@interface FISKeypadViewController ()
@property (nonatomic) NSUInteger middleColumnCount;
@property (nonatomic) NSUInteger middleColumnOffset;
@property (nonatomic) NSUInteger leftColumnCount;
@property (nonatomic) NSUInteger leftColumnOffset;
@property (nonatomic) NSUInteger rightColumnCount;
@property (nonatomic) NSUInteger rightColumnOffset;

@end

@implementation FISKeypadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    FISKeypadButton *phoneButton = [[FISKeypadButton alloc]initWithCallButton];
    [self.view addSubview:phoneButton];
    [phoneButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY).with.offset(200);
        make.height.equalTo(@70);
        make.width.equalTo(@70);
    }];
    
    self.leftColumnCount = 1;
    self.leftColumnOffset = 170;
    for (NSUInteger leftColumn = 0; leftColumn < 4; leftColumn++)
    {
        if (leftColumn == 3)
        {
            FISKeypadButton *asteriskButton = [[FISKeypadButton alloc]initWithAsteriskButton];
            [self.view addSubview:asteriskButton];
            [asteriskButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self.view.mas_centerX).with.offset(-100);
                make.top.equalTo(self.view.mas_top).with.offset(self.leftColumnOffset);
                make.height.equalTo(@70);
                make.width.equalTo(@70);
            }];
        }
        else
        {
            FISKeypadButton *keypadButton = [[FISKeypadButton alloc]initWithKeypadButtonTitle:[NSString stringWithFormat:@"%ld", self.leftColumnCount]];
            [self.view addSubview:keypadButton];
            [keypadButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self.view.mas_centerX).with.offset(-100);
                make.top.equalTo(self.view.mas_top).with.offset(self.leftColumnOffset);
                make.height.equalTo(@70);
                make.width.equalTo(@70);
            }];
        }
        self.leftColumnOffset += 80;
        self.leftColumnCount += 3;
    }
    
    self.middleColumnCount = 2;
    self.middleColumnOffset = 170;
    for (NSUInteger middleColumn = 0; middleColumn < 4; middleColumn++)
    {
        if (middleColumn == 3)
        {
            FISKeypadButton *keypadButton = [[FISKeypadButton alloc]initWithKeypadButtonTitle:@"0"];
            [self.view addSubview:keypadButton];
            [keypadButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self.view.mas_centerX);
                make.top.equalTo(self.view.mas_top).with.offset(self.middleColumnOffset);
                make.height.equalTo(@70);
                make.width.equalTo(@70);
            }];
        }
        else
        {
            FISKeypadButton *keypadButton = [[FISKeypadButton alloc]initWithKeypadButtonTitle:[NSString stringWithFormat:@"%ld", self.middleColumnCount]];
            [self.view addSubview:keypadButton];
            [keypadButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self.view.mas_centerX);
                make.top.equalTo(self.view.mas_top).with.offset(self.middleColumnOffset);
                make.height.equalTo(@70);
                make.width.equalTo(@70);
            }];
        }
        self.middleColumnOffset += 80;
        self.middleColumnCount += 3;
    }
    
    self.rightColumnCount = 3;
    self.rightColumnOffset = 170;
    for (NSUInteger rightColumn = 0; rightColumn < 4; rightColumn++)
    {
        if (rightColumn == 3)
        {
            FISKeypadButton *poundButton = [[FISKeypadButton alloc]initWithPoundButton];
            [self.view addSubview:poundButton];
            [poundButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self.view.mas_centerX).with.offset(100);
                make.top.equalTo(self.view.mas_top).with.offset(self.rightColumnOffset);
                make.height.equalTo(@70);
                make.width.equalTo(@70);
            }];
        }
        else
        {
            FISKeypadButton *keypadButton = [[FISKeypadButton alloc]initWithKeypadButtonTitle:[NSString stringWithFormat:@"%ld", self.rightColumnCount]];
            [self.view addSubview:keypadButton];
            [keypadButton mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self.view.mas_centerX).with.offset(100);
                make.top.equalTo(self.view.mas_top).with.offset(self.rightColumnOffset);
                make.height.equalTo(@70);
                make.width.equalTo(@70);
            }];
        }
        self.rightColumnOffset += 80;
        self.rightColumnCount += 3;
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
