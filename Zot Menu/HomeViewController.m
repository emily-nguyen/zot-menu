//
//  HomeViewController.m
//  Zot Menu
//
//  Created by Kay Lab on 3/8/15.
//  Copyright (c) 2015 Emily Nguyen. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

- (void)button1Clicked:(id)sender;
- (void)button2Clicked:(id)sender;
- (void)button3Clicked:(id)sender;

@end

@implementation HomeViewController

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    UIView *view = [[UIView alloc] initWithFrame:frame];
   
    view.backgroundColor = [UIColor yellowColor];
    CGRect bounds = view.bounds;
    
    // CGRectMake parameters
    int width = 100;
    int height;
    float xPos = (bounds.size.width - width) / 2;
    int yPos;
    
    // Create Zot Menu title label and add it to the home screen.
    yPos = 75;
    height = 50;
    CGRect labelFrame = CGRectMake(xPos, yPos, width, height);
    UILabel* label = [[UILabel alloc] initWithFrame: labelFrame];
    label.text = @"ZOT MENU";
    [view addSubview:label];
    
    // Button height and frame
    height = 30;
    
    // Create Brandywine button and add it to the home screen.
    yPos = 175;
    CGRect buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = buttonFrame;
    button1.backgroundColor = [UIColor lightGrayColor];
    [button1 setTitle:@"Brandywine" forState:UIControlStateNormal];
    [button1 addTarget:self
                action:@selector(button1Clicked:)
      forControlEvents:UIControlEventTouchDown];
    [view addSubview:button1];
    
    // Create Pippin button and add it to the home screen.
    yPos = 250;
    buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = buttonFrame;
    button2.backgroundColor = [UIColor lightGrayColor];
    [button2 setTitle:@"Pippin" forState:UIControlStateNormal];
    [button2 addTarget:self
                     action:@selector(button2Clicked:)
           forControlEvents:UIControlEventTouchDown];
    [view addSubview:button2];
    
    // Create Lot 5 button and add it to the home screen.
    yPos = 325;
    buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = buttonFrame;
    button3.backgroundColor = [UIColor lightGrayColor];
    [button3 setTitle:@"Lot 5" forState:UIControlStateNormal];
    [button3 addTarget:self
                     action:@selector(button3Clicked:)
           forControlEvents:UIControlEventTouchDown];
    [view addSubview:button3];
    
    // Set it as *the* view of this view controller
    self.view = view;
}

- (void)button1Clicked:(id)sender
{
    NSLog(@"Brandywine button clicked.");
}

- (void)button2Clicked:(id)sender
{
    NSLog(@"Pippin button clicked.");
}

- (void)button3Clicked:(id)sender
{
    NSLog(@"Lot 5 button clicked.");
}

@end