test forbidden methods for owned repo
testForbiddenMethodMove

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos move: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed