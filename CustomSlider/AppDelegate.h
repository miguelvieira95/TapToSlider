//
//  AppDelegate.h
//  CustomSlider
//
//  Created by Miguel Vieira on 03/01/2019.
//  Copyright © 2019 Miguel Vieira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

