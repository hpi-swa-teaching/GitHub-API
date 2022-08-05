methods
organizations

	"returns all organizations the user is part of"

	| organizations |
		
	organizations := GitHubOrganizations new.
	
	organizations
		apiUser: self apiUser;
		username: self username.
		
	^ organizations