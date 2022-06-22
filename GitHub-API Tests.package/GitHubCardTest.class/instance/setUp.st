running
setUp
	| userName |
	
	userName := 'AuthorizedUser'.
	self gitHubCard: GitHubCard new.
	self gitHubCard
		apiUser: (GitHubApiUser new username: userName);
		cardId: 1234