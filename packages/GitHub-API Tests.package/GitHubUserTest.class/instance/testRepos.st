test repos
testRepos

	| failed |
	
	failed := false.
	[self gitHubUser repos] 
		on: Error do: [failed := true].
	
	self deny: failed