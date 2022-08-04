test users
testRepos
	
	self assert: ((self gitHubApi repos allowedMethods) = {'search'})