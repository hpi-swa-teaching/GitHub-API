test path
testPath

	self gitHubRepo reponame: 'testRepo'.
	self assert: self gitHubRepo path = '/repos/AuthorizedUser/testRepo'