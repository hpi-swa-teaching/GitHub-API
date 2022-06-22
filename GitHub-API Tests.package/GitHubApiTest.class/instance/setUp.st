running
setUp

	self gitHubApi: GitHubApi new.
	self gitHubApi apiUser: (GitHubApiUser new username: 'AuthorizedUser')