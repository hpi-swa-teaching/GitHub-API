test forbidden Methods
testForbiddenMethodQueriedList

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubIssue list: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed