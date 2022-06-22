test path
testPathForNotAuthorizedUser

	self gitHubIssues reponame: nil.
	self assert: (self gitHubIssues path = '/user/issues')