running
setUp

	| apiUser |
	
	apiUser := GitHubApiUser new.
	apiUser
		username: 'AuthorizedUser';
		token: 'aToken'.
	
	self gitHubCard: GitHubCard new.
	self gitHubCard
		apiUser: apiUser;
		cardId: 1234;
		webClient: GitHubMockWebClient new