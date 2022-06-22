test forbidden methods
testForbiddenMethodQueriedList

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubColumn list: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed