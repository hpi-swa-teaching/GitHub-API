helper
getCardId

	| cards card |
	
	cards := GitHubCards new.
	cards
		token: self token;
		columnId: self columnId.
	
	cards := cards get.
	
	card := cards detect: [:p | (p at: 'note') = self cardnote] ifNone: [].
	card ifNil: [self error: 'Unknown card ' , self cardnote , '!'] ifNotNil: [^ (card at: 'id')]