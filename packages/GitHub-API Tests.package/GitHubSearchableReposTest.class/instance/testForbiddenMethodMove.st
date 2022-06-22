test forbidden methods
testForbiddenMethodMove

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos move: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed