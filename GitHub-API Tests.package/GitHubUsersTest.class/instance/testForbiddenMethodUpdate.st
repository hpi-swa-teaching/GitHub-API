test forbidden methods
testForbiddenMethodUpdate

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubUsers update: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed