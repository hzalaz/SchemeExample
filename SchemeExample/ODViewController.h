//
//  ODViewController.h
//  SchemeExample
//
//  Created by Hernan Zalazar on 9/18/14.
//  Copyright (c) 2014 Overmind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ODViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *field;
- (IBAction)openInSafari:(id)sender;
@end
