//
//  ViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "OpportunitiesViewController.h"

@interface OpportunitiesViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSArray *scheduledOpportunitiesArray;
@property NSArray *suggestedOpportunitiesArray;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation OpportunitiesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onMenuButtonTapped:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtononOpportunitiesVC:)])
    {
        [self.delegate DidTapMenuButtononOpportunitiesVC:self];
    }
}

#pragma mark - UITableView Methods
// Table View will have 2 sections: one for volunteer events already scheduled, and one for suggested opportunities
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: set cell.textLabel.text according to what kind of objects will be in the arrays.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (indexPath.section == 0)
    {
        cell.textLabel.text = [self.scheduledOpportunitiesArray objectAtIndex:indexPath.row];
    }
    else
    {
        cell.textLabel.text = [self.suggestedOpportunitiesArray objectAtIndex:indexPath.row];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
    {
        return self.scheduledOpportunitiesArray.count;
    }
    else
    {
        return self.suggestedOpportunitiesArray.count;
    }
}



@end
