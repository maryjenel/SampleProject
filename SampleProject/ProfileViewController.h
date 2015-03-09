//
//  ProfileViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ProfileViewController;

@protocol ProfileViewControllerDelegate <NSObject>

-(void)DidTapMenuButtonOnProfileVC:(ProfileViewController *)controller;

@end
@interface ProfileViewController : UIViewController

@property (nonatomic, strong)id <ProfileViewControllerDelegate>delegate;
@end
