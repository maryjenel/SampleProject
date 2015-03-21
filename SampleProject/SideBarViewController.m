//
//  SideBarViewController.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/9/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "SideBarViewController.h"

@interface SideBarViewController ()

@property (nonatomic, strong) UIViewController *leftViewController;
@property (nonatomic, assign) NSInteger gap;
@property (nonatomic, strong) UIScrollView *scrollView;

@property (assign)BOOL firstTime;
@end

@implementation SideBarViewController

-(instancetype)initWithLeftViewController:(UIViewController *)leftViewController mainViewController:(UIViewController *)mainViewController gap:(NSInteger)gap
{
    self = [super init];
    if (self)
    {
        _leftViewController = leftViewController;
        _mainViewController = mainViewController;
        _gap = gap;
        _firstTime = YES;

        self.view.backgroundColor = [UIColor blackColor];

        [self setupScrollView];
        [self setupViewControllers];
    }
    return self;
}

-(void)setupScrollView
{
    //creates scroll view programaticallly setting it to 0 because of auto layout
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectZero];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.scrollView];
//set autolayout constraints
    NSDictionary *viewDictionary = @{@"scrollView": self.scrollView};

    // || pins all formats to the scroll view pined to the right and left
    NSString *format = @"|[scrollView]|";
    NSArray *horzConstraints = [NSLayoutConstraint constraintsWithVisualFormat:format options:0 metrics:nil views:viewDictionary];
    [self.view addConstraints:horzConstraints];

    //pins to the top and pins to the bottom
    NSArray *vertConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|" options:0 metrics:nil views:viewDictionary];
    [self.view addConstraints:vertConstraints];

}
//helper method
-(void)addViewController:(UIViewController *)viewController
{
    viewController.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:viewController.view];
    [self addChildViewController:viewController];
    [viewController didMoveToParentViewController:self];

}

-(BOOL)isOpen {

    //is content offset x = to 0?
    CGPoint contentOffset = self.scrollView.contentOffset;
    return contentOffset.x ==0;

}

//whether or not to close the menu
-(void)closeMenuAnimated:(BOOL)animated
{
    CGPoint contentOffset = self.scrollView.contentOffset;
    contentOffset.x = CGRectGetWidth(self.view.bounds) - self.gap;
    [self.scrollView setContentOffset:contentOffset animated:animated];
}

-(void)openMenuAnimated:(BOOL)animated
{
    [self.scrollView setContentOffset:CGPointZero animated:animated];
}

-(void)toggleMenu
{
    if ([self isOpen]) {
        [self closeMenuAnimated:YES];
    }else
    {
        [self openMenuAnimated:YES];
    }
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    //if
    if (self.firstTime) {
        self.firstTime = NO;
        [self closeMenuAnimated:NO];
    }
}

//set up view controller heirachy
-(void)setupViewControllers
{

    [self addViewController:self.leftViewController];
    [self addViewController:self.mainViewController];

    NSDictionary *viewsDictionary = @{@"leftView": self.leftViewController.view, @"mainView": self.mainViewController.view, @"outerView": self.view};

    //mainview will be the same size of outer view
    NSArray *horzConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|[leftView][mainView(==outerView)]|" options:0 metrics:nil views:viewsDictionary];
    [self.view addConstraints:horzConstraints];


    //constraint for left view side

    NSLayoutConstraint *leftViewWidth =[NSLayoutConstraint constraintWithItem:self.leftViewController.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:1 constant:-self.gap];
    [self.view addConstraint:leftViewWidth];

    //vertical constraints

    NSArray *leftViewVertConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[leftView(==outerView)]|" options:0 metrics:nil views:viewsDictionary];
    [self.view addConstraints:leftViewVertConstraints];

    NSArray *mainViewVertConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[mainView(==outerView)]|" options:0 metrics:nil views:viewsDictionary];
    [self.view addConstraints:mainViewVertConstraints];

}




@end
