test users
testUsers

	| failed |
	
	failed := false.
	
	[self gitHubApi users] 
		on: Error do: [failed := true].
	
	self deny: failed