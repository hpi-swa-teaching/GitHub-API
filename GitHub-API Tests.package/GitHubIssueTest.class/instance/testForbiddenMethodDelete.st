test forbidden Methods
testForbiddenMethodDelete

	| failed |
	
	failed := false.
	
	[self gitHubIssue delete]
		on: Error do: [failed := true].

	self assert: failed