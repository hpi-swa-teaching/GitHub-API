methods
cards

	"returns all cards"

	| cards |
	
	cards := GitHubCards new.
	cards
		apiUser: self apiUser;
		columnId: self columnId.
		
	^ cards