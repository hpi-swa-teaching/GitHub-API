running
setUp
	
	| username |
	
	username := 'AuthorizedUser'.
	
	self gitHubRepos: GitHubSearchRepos new.
	self gitHubRepos
		apiUser: (GitHubApiUser new username: username)