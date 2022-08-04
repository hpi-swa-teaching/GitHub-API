running
setUp

	| userName |
	
	userName := 'AuthorizedUser'.
	
	self gitHubCards: GitHubCards new.
	self gitHubCards
		apiUser: (GitHubApiUser new username: userName);
		columnId: 1234