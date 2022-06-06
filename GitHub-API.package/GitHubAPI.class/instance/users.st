methods
users

	| users |
	
	users := GitHubApiUsers new.
	
	users
		token: self token;
		username: self username.
		
	^ users