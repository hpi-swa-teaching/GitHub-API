running
setUp

	| userName |
	
	userName := 'AuthorizedUser'.
	
	self gitHubProject: GitHubProject new.
	self gitHubProject
		apiUser: (GitHubApiUser new username: userName);
		projectId: 1234