//
//  FriendsViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "FriendsViewController.h"

@interface FriendsViewController ()

@end

@implementation FriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onMenuTapped:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtonOnFriendsVC:)]) {
        [self.delegate DidTapMenuButtonOnFriendsVC:self];
    }
}


@end
