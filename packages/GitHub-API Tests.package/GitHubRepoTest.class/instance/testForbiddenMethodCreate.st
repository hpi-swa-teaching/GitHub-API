test forbidden methods
testForbiddenMethodCreate

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepo create: unimportantDictionary]
		on: Error do: [failed := true].
		
	self assert: failed