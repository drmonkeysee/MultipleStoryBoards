//
//  MyNavController.m
//  MultipleStoryBoards
//
//  Created by Brandon Stansbury on 11/27/13.
//  Copyright (c) 2013 InfoSpace, Inc. All rights reserved.
//

#import "MyNavController.h"
#import "MyTableViewController.h"

@interface MyNavController ()
{
    id resultsController;
}
@end

@implementation MyNavController

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
    
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.delegate = self;
    self.visibleViewController.navigationItem.titleView = searchBar;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:animated];
    
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.delegate = self;
    viewController.navigationItem.titleView = searchBar;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    if (self.storyboard == self.visibleViewController.storyboard)
    {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Items" bundle:nil];
        resultsController = [storyboard instantiateInitialViewController];
        [resultsController setItems:@[searchBar.text, @"foo", @"bar", @"baz"]];
        [self pushViewController:resultsController animated:YES];
    }
    else
    {
        if (resultsController)
        {
            [resultsController setItems:@[searchBar.text, @"foo", @"bar", @"baz"]];
            [self popToViewController:resultsController animated:NO];
        }
    }
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    id controller = [super popViewControllerAnimated:animated];
    if (controller == resultsController)
    {
        resultsController = nil;
    }
    return controller;
}

@end
