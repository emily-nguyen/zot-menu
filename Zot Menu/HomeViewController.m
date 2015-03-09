//
//  HomeViewController.m
//  Zot Menu
//
//  Created by Kay Lab on 3/8/15.
//  Copyright (c) 2015 Emily Nguyen. All rights reserved.
//

#import "HomeViewController.h"
#import "WebViewController.h"

@interface HomeViewController ()

@property (nonatomic, copy) NSArray *urls;

- (void)button1Clicked:(id)sender;
- (void)button2Clicked:(id)sender;
- (void)button3Clicked:(id)sender;

@end

@implementation HomeViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.navigationItem.title = @"ZOT MENU";
        _urls = @[@"https://uci.campusdish.com/Commerce/Catalog/Menus.aspx?LocationId=3078", @"https://uci.campusdish.com/Commerce/Catalog/Menus.aspx?LocationId=4832", @"https://uci.campusdish.com/Commerce/Catalog/Menus.aspx?LocationId=3056"];
    }
    return self;
}

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    UIView *view = [[UIView alloc] initWithFrame:frame];
   
    view.backgroundColor = [UIColor colorWithRed:65/256.0 green:93/256.0 blue:141/256.0 alpha:1.0];
    CGRect bounds = view.bounds;
    
    // CGRectMake parameters
    int width = 200;
    int height;
    float xPos = (bounds.size.width - width) / 2;
    int yPos;
    
    // Button height and frame
    height = 30;
    
    // Create Brandywine button and add it to the home screen.
    yPos = 175;
    CGRect buttonFrame = CGRectMake(xPos, yPos, width, height);
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = buttonFrame;
    button1.layer.cornerRadius = 10;
    button1.clipsToBounds = YES;
    button1.backgroundColor = [UIColor colorWithRed:248/256.0 green:248/256.0 blue:245/256.0 alpha:1.0];
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
    button2.layer.cornerRadius = 10;
    button2.clipsToBounds = YES;
    button2.backgroundColor = [UIColor colorWithRed:248/256.0 green:248/256.0 blue:245/256.0 alpha:1.0];
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
    button3.layer.cornerRadius = 10;
    button3.clipsToBounds = YES;
    button3.backgroundColor = [UIColor colorWithRed:248/256.0 green:248/256.0 blue:245/256.0 alpha:1.0];
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
    
    NSURL *URL = [NSURL URLWithString:_urls[0]];
    self.webViewController.title = @"Brandywine";
    self.webViewController.URL = URL;
    [self.navigationController pushViewController:self.webViewController animated:YES];
}

- (void)button2Clicked:(id)sender
{
    NSLog(@"Pippin button clicked.");
    
    NSURL *URL = [NSURL URLWithString:_urls[1]];
    self.webViewController.title = @"Pippin";
    self.webViewController.URL = URL;
    [self.navigationController pushViewController:self.webViewController animated:YES];
}

- (void)button3Clicked:(id)sender
{
    NSLog(@"Lot 5 button clicked.");
    
    NSURL *URL = [NSURL URLWithString:_urls[2]];
    self.webViewController.title = @"Lot 5";
    self.webViewController.URL = URL;
    [self.navigationController pushViewController:self.webViewController animated:YES];
}

@end
