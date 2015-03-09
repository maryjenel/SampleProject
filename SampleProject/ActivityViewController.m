//
//  ActivityViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/8/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "ActivityViewController.h"

@interface ActivityViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSArray *activityArray;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ActivityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onMenuButtonTapped:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(DidTapMenuButtonOnActivityVC:)]) {
        [self.delegate DidTapMenuButtonOnActivityVC:self];
    }
}

#pragma mark - UITableView Methods
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: set cell.textLabel.text according to what kind of objects will be in activityArray.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = [self.activityArray objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.activityArray.count;
}

@end
