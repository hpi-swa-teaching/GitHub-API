test forbidden methods
testForbiddenMethodSearch

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[self gitHubUser search: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Search not allowed!'