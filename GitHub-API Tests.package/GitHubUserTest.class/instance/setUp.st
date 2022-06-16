running
setUp
	
	| username |
	username := 'AuthorizedUser'.
	
	self gitHubUser: GitHubUser new.
	gitHubUser
		apiUser: (GitHubAPI_User new username: username);
		username: username