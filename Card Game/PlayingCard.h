//
//  PlayingCard.h
//  Card Game
//
//  Created by ts on 5/10/14.
//  Copyright (c) 2014 mak Learning. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end
