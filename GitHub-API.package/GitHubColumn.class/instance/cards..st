methods
cards: aCardIdentifier

	| card |
	
	card := GitHubCard new.
	card
		token: self token;
		projectId: self projectId;
		columnId: self columnId.
		
	
	(aCardIdentifier isKindOf: Integer)
		ifTrue: [card cardId: aCardIdentifier].
	(aCardIdentifier isKindOf: String)
		ifTrue: [card cardnote: aCardIdentifier].
		
	^ card