//
//  SearchViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SearchViewController;

@protocol SearchViewControllerDelegate <NSObject>

-(void)DidTapMenuButtonOnSearchVC:(SearchViewController *)controller;

@end
@interface SearchViewController : UIViewController
@property (nonatomic, strong)id <SearchViewControllerDelegate> delegate;
@end
