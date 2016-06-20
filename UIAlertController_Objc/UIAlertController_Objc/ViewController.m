//
//  ViewController.m
//  UIAlertController_Objc
//
//  Created by olxios on 20/06/16.
//  Copyright © 2016 olxios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)testAlert1:(id)sender;
- (IBAction)testAlert2:(id)sender;

- (IBAction)testMultipleCancels:(id)sender;
- (IBAction)testTextField:(id)sender;

@end

@implementation ViewController

- (void)testAlert1:(id)sender
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Error!"
                                                                        message:@"Test error message"
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Dismiss"
                                                          style:UIAlertActionStyleDestructive
                                                        handler:^(UIAlertAction *action) {
                                                            NSLog(@"Dismiss button tapped!");
                                                        }];
    
    [controller addAction:alertAction];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)testAlert2:(id)sender
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Error!"
                                                                        message:@"Test error message"
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Dismiss"
                                                          style:UIAlertActionStyleDestructive
                                                        handler:^(UIAlertAction *action) {
                                                            NSLog(@"Dismiss button tapped!");
                                                        }];
    
    [controller addAction:alertAction];
    
    UIAlertAction *first = [UIAlertAction actionWithTitle:@"1" style:UIAlertActionStyleDefault handler:nil];
    [controller addAction:first];
    
    UIAlertAction *second = [UIAlertAction actionWithTitle:@"2" style:UIAlertActionStyleDefault handler:nil];
    [controller addAction:second];
    
    UIAlertAction *third = [UIAlertAction actionWithTitle:@"3" style:UIAlertActionStyleDefault handler:nil];
    [controller addAction:third];
    
    UIAlertAction *last = [UIAlertAction actionWithTitle:@"4" style:UIAlertActionStyleCancel handler:nil];
    [controller addAction:last];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)testMultipleCancels:(id)sender
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Error!"
                                                                        message:@"Test multiple cancels"
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *firstCancelAction = [UIAlertAction actionWithTitle:@"Cancel 1"
                                                          style:UIAlertActionStyleCancel
                                                        handler:^(UIAlertAction *action) {
                                                            NSLog(@"Cancel 1 button tapped!");
                                                        }];
    
    [controller addAction:firstCancelAction];
    
    UIAlertAction *secondCancelAction = [UIAlertAction actionWithTitle:@"Cancel 2"
                                                          style:UIAlertActionStyleCancel
                                                        handler:^(UIAlertAction *action) {
                                                            NSLog(@"Cancel 2 button tapped!");
                                                        }];
    
    [controller addAction:secondCancelAction];
    
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)testTextField:(id)sender
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Error!"
                                                                        message:@"Test error message"
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Dismiss"
                                                          style:UIAlertActionStyleDestructive
                                                        handler:^(UIAlertAction *action) {
                                                            NSLog(@"Dismiss button tapped!");
                                                            NSLog(@"Textfield text - %@", controller.textFields.firstObject.text);
                                                        }];
    
    [controller addAction:alertAction];
    
    [controller addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Test";
        textField.textColor = [UIColor redColor];
    }];
    
    [self presentViewController:controller animated:YES completion:nil];
}

@end
