test users
testUser

	| failed |
	
	failed := false.
	
	[self gitHubApi user] 
		on: Error do: [failed := true].
	
	self deny: failed