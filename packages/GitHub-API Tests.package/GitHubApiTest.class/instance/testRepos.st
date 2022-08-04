test repos
testRepos
	
	self assert: ((self gitHubApi repos allowedMethods) = {'search'})