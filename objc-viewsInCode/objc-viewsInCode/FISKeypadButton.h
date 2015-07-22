//
//  FISKeypadButton.h
//  objc-viewsInCode
//
//  Created by Yoseob Lee on 7/21/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface FISKeypadButton : UIButton

-(instancetype)initWithKeypadButtonTitle:(NSString *)title;
-(instancetype)initWithCallButton;
-(instancetype)initWithAsteriskButton;
-(instancetype)initWithPoundButton;

@end
