test forbidden methods
testForbiddenMethodDelete

	| failed |
	
	failed := false.
	
	[self gitHubProjects delete]
		on: Error do: [failed := true].

	self assert: failed