//
//  FriendsViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "FriendsViewController.h"

@interface FriendsViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSArray *friendsArray;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FriendsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onMenuTapped:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtonOnFriendsVC:)])
    {
        [self.delegate DidTapMenuButtonOnFriendsVC:self];
    }
}

#pragma mark - UITableView Methods
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: set cell.textLabel.text according to what kind of objects will be in the friendsArray.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = [self.friendsArray objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.friendsArray.count;
}

@end
