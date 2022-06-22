test forbidden methods
testForbiddenMethodUpdate

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos update: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed