test forbidden methods
testForbiddenMethodList

	| failed |
	
	failed := false.
	
	[self gitHubRepo list]
		on: Error do: [failed := true].

	self assert: failed