methods
organizations

	"returns all organizatons"

	| organizations |
	
	organizations := GitHubOrganizations new.
	organizations 
		apiUser: self apiUser.
		
	^ organizations