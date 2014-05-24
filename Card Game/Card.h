//
//  Card.h
//  Card Game
//
//  Created by ts on 5/10/14.
//  Copyright (c) 2014 mak Learning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic)NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

-(int)match: (NSArray *)otherCards;


@end
