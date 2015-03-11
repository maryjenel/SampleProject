//
//  SideBarViewController.h
//  SampleProject
//
//  Created by Mary Jenel Myers on 3/9/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideBarViewController : UIViewController

-(instancetype)initWithLeftViewController:(UIViewController *)leftViewController mainViewController:(UIViewController *)mainViewController gap:(NSInteger)gap;
-(void)toggleMenu;

@end
