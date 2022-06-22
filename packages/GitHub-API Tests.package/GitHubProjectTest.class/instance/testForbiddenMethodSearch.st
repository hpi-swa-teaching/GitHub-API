test forbidden methods
testForbiddenMethodSearch

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubProject search: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed