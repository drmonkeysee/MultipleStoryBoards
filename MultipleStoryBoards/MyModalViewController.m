//
//  MyModalViewController.m
//  MultipleStoryBoards
//
//  Created by Brandon Stansbury on 11/27/13.
//  Copyright (c) 2013 InfoSpace, Inc. All rights reserved.
//

#import "MyModalViewController.h"

@interface MyModalViewController ()

@end

@implementation MyModalViewController

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

- (void)dismissMe:(id)sender
{
    NSLog(@"Dismissed.");
}

@end
