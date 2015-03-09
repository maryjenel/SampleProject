//
//  FriendsViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FriendsViewController;

@protocol FriendsViewControllerDelegate <NSObject>

-(void)DidTapMenuButtonOnFriendsVC:(FriendsViewController *)controller;

@end
@interface FriendsViewController : UIViewController

@property (nonatomic, strong)id <FriendsViewControllerDelegate> delegate;
@end
