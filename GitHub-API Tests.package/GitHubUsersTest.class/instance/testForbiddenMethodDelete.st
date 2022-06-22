test forbidden methods
testForbiddenMethodDelete

	| failed |
	failed := false.
	
	[self gitHubUsers delete]
		on: Error do: [failed := true].

	self assert: failed