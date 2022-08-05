methods
issues

	"returns issues assigend to the authenticated user (across all repositories)"

	| issues |
	
	"endpoint is only available for the authenticated user"
	(self apiUser username = self username) 
		ifFalse: [self error: 'You can only get all issues for the authorized user!']. 
	
	issues := GitHubIssues new.
	issues
		apiUser: self apiUser;
		owner: self username.
	
	^ issues
		