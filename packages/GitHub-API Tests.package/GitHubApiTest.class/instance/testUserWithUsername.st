test users
testUserWithUsername

	| userName |
	
	userName := 'testUser'.
	
	self assert: (self gitHubApi users: userName) username = userName