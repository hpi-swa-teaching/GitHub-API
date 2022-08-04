running
setUp
	
	| username |
	
	username := 'AuthorizedUser'.
	
	self gitHubUser: GitHubUser new.
	self gitHubUser
		apiUser: (GitHubApiUser new username: username);
		username: username