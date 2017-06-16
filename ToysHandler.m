//
//  ToysHandler.m
//  Chain of responsibility
//
//  Created by Vasilii on 16.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ToysHandler.h"
#import "Toy.h"

@implementation ToysHandler

- (void)handlerItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Toy class]]) {
        NSLog(@"Toy found. Handling");
    } else {
        NSLog(@"Toy not found. Handling using next handler");
        [self.nextHandler handlerItem:item];
    }
}

@end

/*
 Как видим, если обработчик получает объект класса Toy – то он его обрабатывает, если нет – то обработчик передает объект следующему обработчику.
 По аналогии создадим два следующих обработчика: для электроники, и мусора:
*/
