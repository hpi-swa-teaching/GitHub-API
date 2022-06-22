test forbidden methods for owned repo
testForbiddenMethodSearch

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos search: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed