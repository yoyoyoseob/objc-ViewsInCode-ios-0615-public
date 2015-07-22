//
//  FISPhoneController.m
//  objc-viewsInCode
//
//  Created by Yoseob Lee on 7/21/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "FISPhoneController.h"
#import "FISPhoneTableViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import "FISKeypadViewController.h"

@interface FISPhoneController ()

@end

@implementation FISPhoneController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.viewControllers = @[ [self sectionWithSystemItems:UITabBarSystemItemFavorites withTitle:@"Favorite"],
                              [self sectionWithSystemItems:UITabBarSystemItemRecents withTitle:@"Recent"],
                              [self sectionWithSystemItems:UITabBarSystemItemContacts withTitle:@"Contacts"],
                              [self keypadWithTitle:@"Keypad"],
                              [self voicemailWithTitle:@"Voicemail"] ];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UINavigationController *)sectionWithSystemItems:(UITabBarSystemItem)itemType withTitle:(NSString *)title
{
    UINavigationController *navController = [[UINavigationController alloc]init];
    
    FISPhoneTableViewController *tableViewController = [[FISPhoneTableViewController alloc]initWithStyle:UITableViewStylePlain];
    tableViewController.title = title;
    
    navController.viewControllers = @[ tableViewController ];
    
    navController.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:itemType tag:0];
    
    return navController;
}

-(UINavigationController *)keypadWithTitle:(NSString *)title
{
    UINavigationController *navController = [[UINavigationController alloc]init];
    
    FISKeypadViewController *keypadViewController = [[FISKeypadViewController alloc]init];
    
    navController.viewControllers = @ [ keypadViewController ];
//    FISPhoneTableViewController *tableViewController = [[FISPhoneTableViewController alloc]initWithStyle:UITableViewStylePlain];
//    tableViewController.title = title;
//    
//    navController.viewControllers = @ [ tableViewController ];
    
    FAKIonIcons *keypadIcon = [FAKIonIcons ios7KeypadIconWithSize:30];
    UIImage *keypadImage = [keypadIcon imageWithSize:CGSizeMake(50, 50)];
    keypadIcon.iconFontSize = 20;
    
    navController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Keypad" image:keypadImage tag:0];
    
    return navController;
}

-(UINavigationController *)voicemailWithTitle:(NSString *)title
{
    UINavigationController *navController = [[UINavigationController alloc]init];
    FISPhoneTableViewController *tableViewController = [[FISPhoneTableViewController alloc]initWithStyle:UITableViewStylePlain];
    tableViewController.title = title;
    
    navController.viewControllers = @ [ tableViewController ];
    
    FAKIonIcons *voicemailIcon = [FAKIonIcons ios7RecordingOutlineIconWithSize:30];
    UIImage *voicemailImage = [voicemailIcon imageWithSize:CGSizeMake(50, 50)];
    voicemailIcon.iconFontSize = 20;
    
    navController.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Voicemail" image:voicemailImage tag:0];
    
    return navController;
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
