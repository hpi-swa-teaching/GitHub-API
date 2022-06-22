test forbidden methods
testForbiddenMethodDelete

	| failed |
	
	failed := false.
	
	[self gitHubIssues delete]
		on: Error do: [failed := true].

	self assert: failed