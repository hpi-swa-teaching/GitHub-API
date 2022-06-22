test path
testPathForNotRepoProject

	self gitHubProjects isRepoProject: false.
	self assert: (self gitHubProjects path = '/users/AuthorizedUser/projects')