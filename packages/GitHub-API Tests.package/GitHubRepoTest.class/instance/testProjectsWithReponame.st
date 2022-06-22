test projects
testProjectsWithReponame
	
	self gitHubRepo reponame: 'testRepo'.
	
	self assert: (self gitHubRepo projects) reponame = 'testRepo'