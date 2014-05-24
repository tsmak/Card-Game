//
//  PlayingCard.m
//  Card Game
//
//  Created by ts on 5/10/14.
//  Copyright (c) 2014 mak Learning. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if ([otherCards count] == 1) {
        PlayingCard *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank) {
            score = 4;
        }else if ([otherCard.suit isEqualToString:self.suit]) {
            score = 1;
        }
    }
    
    return score;
}

-(NSString *)contents
{
    NSArray *rankStrings = @[@"?", @"A", @"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+(NSArray *)validSuits
{
    return @[@"♥︎", @"♦︎", @"♠︎", @"♣︎"];
}

-(void)setSuit:(NSString *)suit
{
    if ([@[@"♥︎", @"♦︎", @"♠︎", @"♣︎"] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit
{
    return _suit?_suit:@"?";
}

+(NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9" @"10", @"J", @"Q", @"K"];
}

+(NSUInteger)maxRank {return [[self rankStrings] count]-1;}

-(void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
