//
//  AppDelegate.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "OpportunitiesViewController.h"
#import "MenuTableViewController.h"
#import "ProfileViewController.h"
#import "ActivityViewController.h"
#import "FriendsViewController.h"
#import "SearchViewController.h"
#import "SideBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property MenuTableViewController *menuVC;
@property OpportunitiesViewController *opportunitiesVC;
@property ProfileViewController *profileVC;
@property ActivityViewController *activityVC;
@property FriendsViewController *friendsVC;
@property SearchViewController *searchVC;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

