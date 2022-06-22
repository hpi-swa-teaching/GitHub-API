test forbidden methods
testForbiddenMethodList

	| failed |
	
	failed := false.
	[self gitHubRepos list]
		on: Error do: [failed := true].

	self assert: failed