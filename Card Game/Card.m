//
//  Card.m
//  Card Game
//
//  Created by ts on 5/10/14.
//  Copyright (c) 2014 mak Learning. All rights reserved.
//

#import "Card.h"

@implementation Card

// automatically generated when declare property
/*
@synthesize chosen = _chosen
@synthesize matched = _matched;

-(BOOL)isChosen
{
    return _chosen;
}
-(void)setChosen:(BOOL)chosen
{
    _chosen = chosen;
}

-(BOOL)isMatched/Users/ts/Desktop/Card Game/Card Game/PlayingCard.m
{
    return _matched;
}
-(void)setMatched:(BOOL)matched
{
    _matched = matched;
}
 */

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
