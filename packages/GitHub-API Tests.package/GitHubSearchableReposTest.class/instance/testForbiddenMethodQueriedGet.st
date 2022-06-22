test forbidden methods
testForbiddenMethodQueriedGet

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos get: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed