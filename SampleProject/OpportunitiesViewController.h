//
//  ViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OpportunitiesViewController;

@protocol OpportunitiesViewControllerDelegate <NSObject>

-(void)DidTapMenuButtononOpportunitiesVC:(OpportunitiesViewController *)controller;

@end

@interface OpportunitiesViewController : UIViewController

@property (nonatomic, strong)id <OpportunitiesViewControllerDelegate> delegate;
@end

