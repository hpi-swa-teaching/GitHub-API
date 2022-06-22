test path
testPathNoReponame

	self gitHubIssues reponame: nil.
	self assert: (self gitHubIssues path = '/user/issues')