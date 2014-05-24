//
//  Deck.h
//  Card Game
//
//  Created by ts on 5/10/14.
//  Copyright (c) 2014 mak Learning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
