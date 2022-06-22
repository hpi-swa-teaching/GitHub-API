test forbidden Methods
testForbiddenMethodQueriedGet

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubIssue get: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed