test path
testPathForNotAuthorizedUser
	
	self gitHubUser username: 'NotAuthorizedUser'.
	self assert: (self gitHubUser path = '/users/NotAuthorizedUser')