test forbidden Methods
testForbiddenMethodList

	| failed |
	
	failed := false.
	[self gitHubIssue list]
		on: Error do: [failed := true].

	self assert: failed