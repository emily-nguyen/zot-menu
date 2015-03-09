//
//  WebViewController.m
//  Zot Menu
//
//  Created by Kay Lab on 3/8/15.
//  Copyright (c) 2015 Emily Nguyen. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

- (void)loadView
{
    UIWebView *webView = [[UIWebView alloc] init];
    webView.scalesPageToFit = YES;
    self.view = webView;
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.view setNeedsDisplay];
}

- (void)setURL:(NSURL *)URL
{
    _URL = URL;
    if (_URL) {
        NSURLRequest *request = [NSURLRequest requestWithURL:_URL];
        [(UIWebView *)self.view loadRequest:request];
    }
}

@end
