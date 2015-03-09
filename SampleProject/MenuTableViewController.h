//
//  MenuTableViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuTableViewController;

@protocol MenuViewControllerDelegate <NSObject>

-(void)menuDidTapProfile:(MenuTableViewController *)controller;
-(void)menuDidTapOpportunities:(MenuTableViewController *)controller;
-(void)menuDidTapActivity:(MenuTableViewController *)controller;
-(void)menuDidTapFriends:(MenuTableViewController *)controller;
-(void)menuDidTapSearch:(MenuTableViewController *)controller;

@end

@interface MenuTableViewController : UITableViewController

@property (nonatomic, assign) id <MenuViewControllerDelegate> delegate;

@end
