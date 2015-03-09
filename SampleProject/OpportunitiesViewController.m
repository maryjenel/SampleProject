//
//  ViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "OpportunitiesViewController.h"

@interface OpportunitiesViewController ()

@end

@implementation OpportunitiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)onMenuButtonTapped:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtononOpportunitiesVC:)]) {
        [self.delegate DidTapMenuButtononOpportunitiesVC:self];
    }
}

@end
