//
//  AppDelegate.h
//  爱购街
//
//  Created by Jhwilliam on 16/1/27.
//  Copyright © 2016年 01. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "MMDrawerController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property(nonatomic, strong)MMDrawerController *drawerCtrl;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

