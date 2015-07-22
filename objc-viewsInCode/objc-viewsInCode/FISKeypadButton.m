//
//  FISKeypadButton.m
//  objc-viewsInCode
//
//  Created by Yoseob Lee on 7/21/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "FISKeypadButton.h"
#import <FontAwesomeKit/FontAwesomeKit.h>

@implementation FISKeypadButton

-(instancetype)initWithKeypadButtonTitle:(NSString *)title
{
    self = [super init];
    if (self)
    {
        self = [UIButton buttonWithType:UIButtonTypeCustom];
    
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:30];
        
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 70/2.0f;
        self.layer.borderColor = [UIColor darkGrayColor].CGColor;
        self.layer.borderWidth = 2.0f;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(instancetype)initWithCallButton
{
    self = [super init];
    if (self)
    {
        self = [UIButton buttonWithType:UIButtonTypeCustom];
        
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 70/2.0f;
        self.layer.borderColor = [UIColor darkGrayColor].CGColor;
        self.layer.borderWidth = 1.0f;
        self.backgroundColor = [UIColor whiteColor];
        
        FAKIonIcons *phoneIcon = [FAKIonIcons ios7TelephoneOutlineIconWithSize:50];
        UIImage *phoneImage = [phoneIcon imageWithSize:CGSizeMake(50, 50)];
        [self setImage:phoneImage forState:UIControlStateNormal];
    }
    return self;
}

-(instancetype)initWithAsteriskButton
{
    self = [super init];
    if (self)
    {
        self = [UIButton buttonWithType:UIButtonTypeCustom];
        
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 70/2.0f;
        self.layer.borderColor = [UIColor darkGrayColor].CGColor;
        self.layer.borderWidth = 2.0f;
        self.backgroundColor = [UIColor whiteColor];
        
        FAKIonIcons *asteriskIcon = [FAKIonIcons asteriskIconWithSize:25];
        UIImage *asteriskImage = [asteriskIcon imageWithSize:CGSizeMake(25, 25)];
        [self setImage:asteriskImage forState:UIControlStateNormal];
    }
    return self;
}

-(instancetype)initWithPoundButton
{
    self = [super init];
    if (self)
    {
        self = [UIButton buttonWithType:UIButtonTypeCustom];
        
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 70/2.0f;
        self.layer.borderColor = [UIColor darkGrayColor].CGColor;
        self.layer.borderWidth = 2.0f;
        self.backgroundColor = [UIColor whiteColor];
        
        FAKIonIcons *poundIcon = [FAKIonIcons poundIconWithSize:25];
        UIImage *poundImage = [poundIcon imageWithSize:CGSizeMake(25, 25)];
        [self setImage:poundImage forState:UIControlStateNormal];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
