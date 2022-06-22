test projects
testProjectsWithIntegerParameter
	
	self gitHubRepo reponame: 'testRepo'.
	
	self assert: (self gitHubRepo projects: 1234) projectId = 1234