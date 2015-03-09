//
//  ProfileViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (IBAction)onMenuButtonTapped:(UIBarButtonItem *)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtonOnProfileVC:)]) {
        [self.delegate DidTapMenuButtonOnProfileVC:self];
    }
}

@end
