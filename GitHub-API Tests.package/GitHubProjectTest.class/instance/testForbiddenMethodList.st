test forbidden methods
testForbiddenMethodList

	| failed |
	
	failed := false.
	[self gitHubProject list]
		on: Error do: [failed := true].

	self assert: failed