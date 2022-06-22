test issues
testIssuesForAuthorizedUser

	| failed |
	
	failed := false.
	[self gitHubUser issues] 
		on: Error do: [failed := true].
	
	self deny: failed