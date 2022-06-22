running
setUp
	
	| apiUser |
	
	apiUser := GitHubApiUser new.
	apiUser
		username: 'SWTGitHubAPI';
		token: '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'.
	self gitHubApi: GitHubApi new.
	self gitHubApi apiUser: apiUser