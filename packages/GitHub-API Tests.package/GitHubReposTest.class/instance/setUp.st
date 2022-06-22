running
setUp
	
	| username |
	username := 'AuthorizedUser'.
	
	self gitHubRepos: GitHubRepos new.
	self gitHubRepos
		apiUser: (GitHubApiUser new username: username);
		owner: username