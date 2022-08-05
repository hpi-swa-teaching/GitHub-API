methods
users

	"returns all users, that signed up on GitHub"

	| users |
	
	users := GitHubUsers new. 
	users
		apiUser: self apiUser.
		
	^ users