helper
getCardIdByNote: aString

	| cards card |
	
	cards := GitHubCards new.
	cards
		apiUser: self apiUser;
		columnId: self columnId.
	
	cards := cards list.
	
	card := cards detect: [:p | (p at: 'note') = aString] ifNone: [].
	card ifNil: [self error: 'Unknown card ' , aString , '!'] ifNotNil: [^ (card at: 'id')]