test forbidden methods
testForbiddenMethodCreate

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[self gitHubUser create: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Create not allowed!'