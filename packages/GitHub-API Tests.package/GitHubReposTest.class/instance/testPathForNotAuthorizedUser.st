test path
testPathForNotAuthorizedUser

	self gitHubRepos owner: 'NotAuthorizedUser'.
	self assert: (self gitHubRepos path = '/users/NotAuthorizedUser/repos')