//
//  MyViewController.h
//  MultipleStoryBoards
//
//  Created by Brandon Stansbury on 11/27/13.
//  Copyright (c) 2013 InfoSpace, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController
{
    IBOutlet UILabel *myLabel;
}

@property (nonatomic, readonly) UILabel *myLabel;
@property (nonatomic, copy) NSString *myText;

@end
