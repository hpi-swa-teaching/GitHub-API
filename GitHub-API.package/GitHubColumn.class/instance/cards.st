methods
cards

	| cards |
	
	cards := GitHubCards new.
	cards
		token: self token;
		columnId: self columnId.
		
	^ cards