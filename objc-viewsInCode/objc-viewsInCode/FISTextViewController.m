//
//  FISTextViewController.m
//  objc-viewsInCode
//
//  Created by Yoseob Lee on 7/21/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "FISTextViewController.h"
#import <Masonry/Masonry.h>

@interface FISTextViewController ()

@end

@implementation FISTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *textLabel = [[UILabel alloc]init];
    textLabel.text = self.textToDisplay;
    textLabel.font = [UIFont systemFontOfSize:50];
    [self.view addSubview:textLabel];
    
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
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
