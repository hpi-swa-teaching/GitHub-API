test reponame
testReponameWithReponame

	self gitHubRepo reponame: 'testRepo'.
	
	self assert: self gitHubRepo reponame = 'testRepo'