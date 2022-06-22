test forbidden methods
testForbiddenMethodDelete

	| failed |
	
	failed := false.
	
	[self gitHubRepos delete]
		on: Error do: [failed := true].

	self assert: failed