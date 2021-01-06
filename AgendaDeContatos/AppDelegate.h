//
//  AppDelegate.h
//  AgendaDeContatos
//
//  Created by Breno Luizetto Cintra on 05/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

