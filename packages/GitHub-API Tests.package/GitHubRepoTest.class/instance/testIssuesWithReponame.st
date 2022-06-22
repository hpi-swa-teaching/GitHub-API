test Issues
testIssuesWithReponame
	
	self gitHubRepo reponame: 'testRepo'.
	
	self assert: (self gitHubRepo issues) reponame = 'testRepo'