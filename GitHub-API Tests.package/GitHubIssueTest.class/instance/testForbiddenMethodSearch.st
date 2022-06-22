test forbidden Methods
testForbiddenMethodSearch

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubIssue search: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed