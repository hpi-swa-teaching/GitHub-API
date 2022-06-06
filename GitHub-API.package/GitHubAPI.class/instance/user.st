methods
user

	| user |
	
	user := GitHubUser new.
	
	user
		token: self token;
		username: self username;
		isAuthorizedUser: true.
		
	^ user