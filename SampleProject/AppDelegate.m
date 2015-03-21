//
//  AppDelegate.m
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/7/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()<MenuViewControllerDelegate, OpportunitiesViewControllerDelegate,ProfileViewControllerDelegate,ActivityViewControllerDelegate, FriendsViewControllerDelegate, SearchViewControllerDelegate>


@property UINavigationController *menuNav;
@property UINavigationController *opportunitiesNav;
@property UINavigationController *profileNav;
@property UINavigationController *activityNav;
@property UINavigationController *friendsNav;
@property UINavigationController *searchNav;
@property SideBarViewController *sideBarVC;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //navigates through the main bundle. instatiates the view controllers.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];

    self.menuVC = [storyboard instantiateViewControllerWithIdentifier:@"menuVC"];
    self.menuVC.delegate = self;

    self.opportunitiesVC = [storyboard instantiateViewControllerWithIdentifier:@"opportunitiesVC"];
    self.opportunitiesVC.delegate = self;


    self.profileVC = [storyboard instantiateViewControllerWithIdentifier:@"profileVC"];
    self.profileVC.delegate = self;

    self.activityVC = [storyboard instantiateViewControllerWithIdentifier:@"activityVC"];
    self.activityVC.delegate = self;

    self.friendsVC = [storyboard instantiateViewControllerWithIdentifier:@"friendsVC"];
    self.friendsVC.delegate = self;

    self.searchVC = [storyboard instantiateViewControllerWithIdentifier:@"searchVC"];
    self.searchVC.delegate = self;

    self.menuNav = [[UINavigationController alloc] initWithRootViewController:self.menuVC];
    self.opportunitiesNav = [[UINavigationController alloc] initWithRootViewController:self.opportunitiesVC];
    self.profileNav = [[UINavigationController alloc]initWithRootViewController:self.profileVC];
    self.activityNav = [[UINavigationController alloc]initWithRootViewController:self.activityVC];
    self.friendsNav = [[UINavigationController alloc]initWithRootViewController:self.friendsVC];
    self.searchNav = [[UINavigationController alloc]initWithRootViewController:self.searchVC];
    self.sideBarVC = [[SideBarViewController alloc]initWithLeftViewController:self.menuNav mainViewController:self.profileNav gap:50];
    //creates a new window for the root VC
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.sideBarVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
-(void)DidTapMenuButtonOnProfileVC:(ProfileViewController *)controller
{
    self.sideBarVC.mainViewController = self.profileNav;
    [self.sideBarVC setupViewControllers];
    self.window.rootViewController = self.sideBarVC;
    [self.sideBarVC toggleMenu];

}
-(void)DidTapMenuButtonOnSearchVC:(SearchViewController *)controller
{
    self.sideBarVC.mainViewController = self.searchNav;
    [self.sideBarVC setupViewControllers];
    self.window.rootViewController = self.sideBarVC;
    [self.sideBarVC toggleMenu];


}
-(void)DidTapMenuButtonOnActivityVC:(ActivityViewController *)controller
{


    self.sideBarVC.mainViewController = self.activityNav;
    [self.sideBarVC setupViewControllers];
    self.window.rootViewController = self.sideBarVC;
    [self.sideBarVC toggleMenu];




}
-(void)DidTapMenuButtonOnFriendsVC:(FriendsViewController *)controller
{
    self.sideBarVC.mainViewController = self.friendsNav;
    [self.sideBarVC setupViewControllers];
    self.window.rootViewController = self.sideBarVC;
    [self.sideBarVC toggleMenu];

}
-(void)DidTapMenuButtononOpportunitiesVC:(OpportunitiesViewController *)controller
{
    self.sideBarVC.mainViewController = self.opportunitiesNav;
    [self.sideBarVC setupViewControllers];
    self.window.rootViewController = self.sideBarVC;
    [self.sideBarVC toggleMenu];

}

-(void)menuDidTapProfile:(MenuTableViewController *)controller
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.profileVC = [storyboard instantiateViewControllerWithIdentifier:@"profileVC"];
    self.profileVC.delegate = self;
    self.profileNav = [[UINavigationController alloc]initWithRootViewController:self.profileVC];
    self.window.rootViewController = self.profileNav;
    [self.sideBarVC toggleMenu];
    if (self.profileNav.viewControllers[0] != self.profileVC) {
        [self.profileNav setViewControllers:@[self.profileVC] animated:YES];
    }
}
-(void)menuDidTapFriends:(MenuTableViewController *)controller
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.friendsVC = [storyboard instantiateViewControllerWithIdentifier:@"friendsVC"];
    self.friendsVC.delegate = self;
    self.friendsNav = [[UINavigationController alloc]initWithRootViewController:self.friendsVC];
        self.window.rootViewController = self.friendsNav;
        if (self.friendsNav.viewControllers[0] != self.friendsVC)
        {
            [self.friendsNav setViewControllers:@[self.friendsVC] animated:YES];
        }


    [self.sideBarVC toggleMenu];

    
}
-(void)menuDidTapOpportunities:(MenuTableViewController *)controller
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.opportunitiesVC = [storyboard instantiateViewControllerWithIdentifier:@"opportunitiesVC"];
    self.opportunitiesVC.delegate = self;
    self.opportunitiesNav = [[UINavigationController alloc]initWithRootViewController:self.opportunitiesVC];
   self.window.rootViewController = self.opportunitiesNav;
    [self.sideBarVC toggleMenu];
    if (self.opportunitiesNav.viewControllers[0] != self.opportunitiesVC) {
        [self.opportunitiesNav setViewControllers:@[self.opportunitiesVC] animated:YES];
    }

}
-(void)menuDidTapSearch:(MenuTableViewController *)controller
{

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.searchVC = [storyboard instantiateViewControllerWithIdentifier:@"searchVC"];
    self.searchVC.delegate = self;
    self.searchNav = [[UINavigationController alloc]initWithRootViewController:self.searchVC];

   self.window.rootViewController = self.searchNav;
    [self.sideBarVC toggleMenu];
    if (self.searchNav.viewControllers[0] != self.searchVC) {
        [self.searchNav setViewControllers:@[self.searchVC] animated:YES];
    }
}
-(void)menuDidTapActivity:(MenuTableViewController *)controller
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.activityVC = [storyboard instantiateViewControllerWithIdentifier:@"activityVC"];
    self.activityVC.delegate = self;
    self.activityNav = [[UINavigationController alloc]initWithRootViewController:self.activityVC];

    self.window.rootViewController = self.activityNav;
    [self.sideBarVC toggleMenu];
    if (self.activityNav.viewControllers[0] != self.activityVC) {
        [self.activityNav setViewControllers:@[self.activityVC] animated:YES];
    }

}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "MaryJenelMyers.SampleProject" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"SampleProject" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"SampleProject.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
