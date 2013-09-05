#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
	NSArray *rankStrings = [PlayingCard rankStrings];
	return [rankStrings[self.rank] stringbyAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
	return @[@"a", @"b", @"c", @"d"];
}

- (void)setSuit:(NSString *)suit
{
	if ([PlayingCard validSuits] containsObject:suit]) {
		_suit = suit;
	}
}

- (NSString *)suit
{
	return _suit ? suit : @"?";
}

+ (NSArray *)rankStrings
{
	return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7",
			@"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
	return [self rankStrings].count - 1;
}

- (void)setRank:(NSUInteger)rank
{
	if (rank <= [PlayingCard maxRank]) {
		_rank = rank;
	}
}


@end
