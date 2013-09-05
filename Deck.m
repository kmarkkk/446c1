#import "Deck.h"

@interface Deck()
@property (strong, nonatmoic) NSMutableArray *card;
@end

@implementation Deck

- (NSMutableArray *)cards
{
	/* Lazy initialization */
	if (!_cards) {
		_cards = [[NSMutableArray alloc] init];
	}
	return _cards;
}

- (void)addCard:(Card *)card atTop:(Bool)atTop
{
	if (atTop) {
		[self.cards insertObject:card atIndex:0];
	} else {
		[self.cards addObject:card];
	}
}


-(Card *)drawRandomCard
{
	Card *randomCard = nil;
	if (self.cards.count) {
		unsigned index = arc4random() % self.cards.count;
		randomCard = self.cards[index];
		[self.cards removeObjectAtIndex:index];
	}
	return randomCard;
}
