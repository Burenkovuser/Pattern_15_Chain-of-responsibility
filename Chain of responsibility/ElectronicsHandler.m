//
//  ElectronicsHandler.m
//  Chain of responsibility
//
//  Created by Vasilii on 16.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ElectronicsHandler.h"
#import "Electronics.h"

@implementation ElectronicsHandler

- (void)handlerItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Electronics class]])
    {
        NSLog(@"Electronics found. Handling");
    }
    else
    {
        NSLog(@"Electronics not found. Handling using next handler");
        [self.nextHandler handlerItem:item];
    }
}

@end
