test users
testUserWithUsername

	| userName |
	
	userName := 'testUser'.
	
	self assert: (self gitHubApi user: userName) username = userName