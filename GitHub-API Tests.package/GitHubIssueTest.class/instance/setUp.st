running
setUp
	| userName |
	
	userName := 'AuthorizedUser'.
	self gitHubIssue: GitHubIssue new.
	self gitHubIssue
		apiUser: (GitHubApiUser new username: userName);
		owner: userName;
		reponame: 'testRepo';
		issueNumber: 1234