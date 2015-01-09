//
//  XZZViewController.m
//  Parse Test
//
//  Created by Zac on 9/01/2015.
//  Copyright (c) 2015 1st1k. All rights reserved.
//

#import "XZZViewController.h"
#import <parse/Parse.h>

@interface XZZViewController ()

@end

@implementation XZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    PFObject *testObeject = [PFObject objectWithClassName:@"TestObject"];
//    [testObeject setObject:@"bar" forKey:@"foo"];
//    [testObeject save];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveUserButtonPressed:(UIButton *)sender {
    PFObject *loginCredentials = [PFObject objectWithClassName:@"LoginCredentials"];
    loginCredentials[@"name"]  = self.usernameTextField.text;
    loginCredentials[@"password"] = self.passwordTextField.text;
    [loginCredentials saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:@"Save" message:@"Your object saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alerView show];
            NSLog(@"save succeeded");            
        }
        else if (error){
            NSLog(@"%@", error);
        }
    }];
}

- (IBAction)viewUserBarButtonPressed:(UIBarButtonItem *)sender {
}
@end
