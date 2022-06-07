methods
user

	| user |
	
	user := GitHubUser new.
	
	user
		apiUser: self apiUser;
		username: self apiUser username.
		
	^ user