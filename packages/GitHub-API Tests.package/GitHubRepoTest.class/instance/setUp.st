running
setUp

	| apiUser username |
	
	apiUser := GitHubApiUser new.
	
	username := 'AuthorizedUser'.
		
	self gitHubRepo: GitHubRepo new.
	self gitHubRepo
		apiUser: apiUser;
		owner: username