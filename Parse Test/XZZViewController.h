//
//  XZZViewController.h
//  Parse Test
//
//  Created by Zac on 9/01/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XZZViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)saveUserButtonPressed:(UIButton *)sender;
- (IBAction)viewUserBarButtonPressed:(UIBarButtonItem *)sender;

@end
