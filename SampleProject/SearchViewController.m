//
//  SearchViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onMenuButtonTapped:(UIBarButtonItem *)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtonOnSearchVC:)]) {
        [self.delegate DidTapMenuButtonOnSearchVC:self];
    }
}


@end
