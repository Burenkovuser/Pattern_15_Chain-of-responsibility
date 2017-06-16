//
//  BasicHandler.h
//  Chain of responsibility
//
//  Created by Vasilii on 16.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicItem.h"

@interface BasicHandler : NSObject {
@private BasicHandler *_nextHandler;
}

@property(nonatomic, strong) BasicHandler *nextHandler;

- (void) handlerItem: (BasicItem *) item;


@end

/*
базовый обработчик, умеет обрабатывать объекты типа BasicItem. И самое важное – он имеет ссылку на следующий обработчик ( как в нашей очереди, про людей передающие посылку ).
*/
