//
//  AppDelegate.m
//  Chain of responsibility
//
//  Created by Vasilii on 16.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "BasicHandler.h"
#import "BasicItem.h"
#import "Toy.h"
#import "Electronics.h"
#import "Trash.h"
#import "ToysHandler.h"
#import "ElectronicsHandler.h"
#import "OtherItemsHandler.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //создаем обработчики
    BasicHandler *toysHandler = [[ToysHandler alloc] init];
    BasicHandler *electronicsHandler = [[ElectronicsHandler alloc] init];
    BasicHandler *otherItemHandler = [[OtherItemsHandler alloc]init];
    
    //создаем последовательность обработки
    toysHandler.nextHandler = electronicsHandler;
    electronicsHandler.nextHandler = otherItemHandler;
    
    //создаем объекты
    Toy *toy = [[Toy alloc] init];
    Electronics *electronic = [[Electronics alloc] init];
    Trash *trash = [[Trash alloc] init];
    
    //обрабатываем элементы
    [toysHandler handlerItem:toy];
    [toysHandler handlerItem:electronic];
    //[toysHandler handlerItem:trash];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
