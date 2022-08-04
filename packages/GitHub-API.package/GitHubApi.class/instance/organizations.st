methods
organizations

	| organizations |
	
	organizations := GitHubOrganizations new.
	organizations 
		apiUser: self apiUser.
		
	^ organizations