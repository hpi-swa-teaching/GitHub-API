methods
user: aUsername

	| user |
	
	user := GitHubUser new.
	user
		apiUser: self apiUser;
		username: aUsername.
	
	^ user