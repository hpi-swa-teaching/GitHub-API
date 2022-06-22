test forbidden methods
testForbiddenMethodCreate

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubColumn create: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed