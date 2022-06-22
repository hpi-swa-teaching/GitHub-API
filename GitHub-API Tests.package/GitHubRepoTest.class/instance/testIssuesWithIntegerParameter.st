test Issues
testIssuesWithIntegerParameter
	
	self gitHubRepo reponame: 'testRepo'.
	
	self assert: (self gitHubRepo issues: 1234) issueNumber = 1234