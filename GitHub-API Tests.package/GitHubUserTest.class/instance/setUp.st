running
setUp
	
	| username |
	username := 'AuthorizedUser'.
	
	self gitHubUser: GitHubUser new.
	gitHubUser
		apiUser: (GitHubApiUser new username: username);
		username: username