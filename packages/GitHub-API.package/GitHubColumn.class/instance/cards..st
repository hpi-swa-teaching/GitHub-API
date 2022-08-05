methods
cards: aCardIdentifier

	"returns a specific card identified by id or note (content)"

	| card |
	
	card := GitHubCard new.
	card apiUser: self apiUser.
		
	
	(aCardIdentifier isKindOf: Integer)
		ifTrue: [card cardId: aCardIdentifier].
	(aCardIdentifier isKindOf: String)
		ifTrue: [card cardId: (self getCardIdByNote: aCardIdentifier)].
		
	^ card