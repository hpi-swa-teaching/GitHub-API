accessing
cardId

	^ cardId ifNil: [self getCardId]