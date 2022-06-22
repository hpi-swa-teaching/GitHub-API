running
setUp
	| userName |
	
	userName := 'AuthorizedUser'.
	self gitHubIssues: GitHubIssues new.
	self gitHubIssues
		apiUser: (GitHubApiUser new username: userName);
		owner: userName;
		reponame: 'testRepo'