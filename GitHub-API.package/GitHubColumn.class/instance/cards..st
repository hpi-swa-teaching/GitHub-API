methods
cards: aCardIdentifier

	| card |
	
	card := GitHubCard new.
	card apiUser: self apiUser.
		
	
	(aCardIdentifier isKindOf: Integer)
		ifTrue: [card cardId: aCardIdentifier].
	(aCardIdentifier isKindOf: String)
		ifTrue: [card cardId: (self getCardIdByNote: aCardIdentifier)].
		
	^ card