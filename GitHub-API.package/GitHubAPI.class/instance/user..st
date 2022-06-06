methods
user: aUsername

	| user |
	
	user := GitHubUser new.
	user
		token: self token;
		username: aUsername;
		isAuthorizedUser: (self username = aUsername).
	
	^ user