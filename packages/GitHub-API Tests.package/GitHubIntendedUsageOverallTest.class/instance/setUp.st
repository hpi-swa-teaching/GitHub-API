running
setUp
	
	| apiUser |
	
	apiUser := GitHubApiUser new.
	apiUser
		username: 'aUsername';
		token: 'aToken'.
		
	self gitHubApi: GitHubApi new.
	self gitHubApi apiUser: apiUser