//
//  ODViewController.m
//  SchemeExample
//
//  Created by Hernan Zalazar on 9/18/14.
//  Copyright (c) 2014 Overmind. All rights reserved.
//

#import "ODViewController.h"

@interface ODViewController ()
@property (strong, nonatomic) NSURL *url;
@end

@implementation ODViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(startedFromURL:) name:@"STARTED_FROM_URL_NOTIF" object:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.label.text = self.url.absoluteString;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)startedFromURL:(NSNotification *)notification {
    self.url = notification.userInfo[@"url"];
    self.label.text = self.url.absoluteString;
}

- (IBAction)openInSafari:(id)sender {
    if (self.field.text) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.field.text]];
    }
    [self.field resignFirstResponder];
}
@end
