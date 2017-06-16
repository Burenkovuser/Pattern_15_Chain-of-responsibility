//
//  OtherItemsHandler.m
//  Chain of responsibility
//
//  Created by Vasilii on 16.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "OtherItemsHandler.h"

@implementation OtherItemsHandler

-(void) handleItem:(BasicItem *)item
{
    NSLog(@"Found undefined item. Destroying");
}

@end

/*
Как видим OtherItemsHandler в случае, когда до него дошло дело – объект уничтожает, и не пробует дергать следующий обработчик.
*/
