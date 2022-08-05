methods
users: aUsername

	"returns a user by username"

	| user |
	
	user := GitHubUser new.
	user
		apiUser: self apiUser;
		username: aUsername.
	
	^ user