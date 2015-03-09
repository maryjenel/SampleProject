//
//  ActivityViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ActivityViewController;

@protocol ActivityViewControllerDelegate <NSObject>

-(void)DidTapMenuButtonOnActivityVC:(ActivityViewController *)controller;

@end
@interface ActivityViewController : UIViewController

@property (nonatomic, strong)id <ActivityViewControllerDelegate> delegate;
@end
