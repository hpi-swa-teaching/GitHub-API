methods
users

	| users |
	
	users := GitHubUsers new. 
	users
		apiUser: self apiUser.
		
	^ users