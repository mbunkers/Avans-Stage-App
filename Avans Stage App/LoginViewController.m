//
//  LoginViewController.m
//  Avans Stage App
//
//  Created by Marc Bunkers on 29-04-13.
//  Copyright (c) 2013 Marc Bunkers. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Inloggen:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Accounttype" message:@"Met welke accounttype wilt u inloggen" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Student", @"Docent",nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 1)
    {
        UIStoryboard *storyboard = [UIApplication sharedApplication].delegate.window.rootViewController.storyboard;
        
        UIViewController *main = [storyboard instantiateViewControllerWithIdentifier:@"StudentIngelogd"];
        [self presentViewController:main animated:YES completion:nil];
    }
    if (buttonIndex == 2){
        UIStoryboard *storyboard = [UIApplication sharedApplication].delegate.window.rootViewController.storyboard;
        
        UIViewController *main = [storyboard instantiateViewControllerWithIdentifier:@"DocentIngelogd"];
        [self presentViewController:main animated:YES completion:nil];
    }
}

@end
