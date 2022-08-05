running
setUp

	| apiUser |
	
	apiUser := GitHubApiUser new.
	apiUser
		username: 'AuthorizedUser';
		token: 'aToken'.
	
	self gitHubCards: GitHubCards new.
	self gitHubCards
		apiUser: apiUser;
		columnId: 1234;
		webClient: GitHubMockWebClient new