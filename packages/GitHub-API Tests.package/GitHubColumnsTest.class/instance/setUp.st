running
setUp
	| userName |
	
	userName := 'AuthorizedUser'.
	self gitHubColumns: GitHubColumns new.
	self gitHubColumns
		apiUser: (GitHubApiUser new username: userName);
		projectId: 1234