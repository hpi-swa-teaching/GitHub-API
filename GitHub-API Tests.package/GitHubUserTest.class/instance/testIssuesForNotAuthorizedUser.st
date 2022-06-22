test issues
testIssuesForNotAuthorizedUser

	| failed |
	
	self gitHubUser username: 'NotAuthorizedUser'.
	failed := false.
	
	[self gitHubUser issues] 
		on: Error do: [failed := true].
	
	self assert: failed