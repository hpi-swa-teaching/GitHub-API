running
setUp
	| userName |
	
	userName := 'AuthorizedUser'.
	self gitHubColumn: GitHubColumn new.
	self gitHubColumn
		apiUser: (GitHubApiUser new username: userName);
		columnId: 3