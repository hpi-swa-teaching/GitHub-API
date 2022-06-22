running
setUp
	| userName |
	
	userName := 'AuthorizedUser'.
	self gitHubProjects: GitHubProjects new.
	self gitHubProjects
		apiUser: (GitHubApiUser new username: userName);
		owner: userName;
		reponame: 'testRepo'