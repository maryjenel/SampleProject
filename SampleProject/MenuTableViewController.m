//
//  MenuTableViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "MenuTableViewController.h"

@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        if  (self.delegate && [self.delegate respondsToSelector:@selector(menuDidTapProfile:)]) {
            [self.delegate menuDidTapProfile:self];
        }
    } else if (indexPath.row == 1)
    {
        if (self.delegate && [self.delegate respondsToSelector:@selector(menuDidTapOpportunities:)]) {
            [self.delegate menuDidTapOpportunities:self];
        }
    }
    else if (indexPath.row == 2) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(menuDidTapActivity:)]) {
            [self.delegate menuDidTapActivity:self];
        }
    } else if (indexPath.row == 3) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(menuDidTapFriends:)]) {
            [self.delegate menuDidTapFriends:self];
        }
    } else if (indexPath.row == 4) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(menuDidTapSearch:)]) {
            [self.delegate menuDidTapSearch:self];
        }
    }

}



@end
