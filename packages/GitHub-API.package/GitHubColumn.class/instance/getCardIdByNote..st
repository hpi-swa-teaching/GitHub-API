helper
getCardIdByNote: aCardNote

	| cards card |
	
	cards := GitHubCards new.
	cards
		apiUser: self apiUser;
		columnId: self columnId.
	
	cards := cards list.
	
	card := cards detect: [:p | (p at: 'note') = aCardNote] ifNone: [].
	card ifNil: [self error: 'Unknown card ' , aCardNote , '!'] ifNotNil: [^ (card at: 'id')]