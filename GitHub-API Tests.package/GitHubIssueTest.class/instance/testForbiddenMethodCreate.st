test forbidden Methods
testForbiddenMethodCreate

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubIssue create: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed