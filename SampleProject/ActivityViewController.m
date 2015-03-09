//
//  ActivityViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "ActivityViewController.h"

@interface ActivityViewController ()

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onMenuButtonTapped:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtonOnActivityVC:)]) {
        [self.delegate DidTapMenuButtonOnActivityVC:self];
    }
}

@end
