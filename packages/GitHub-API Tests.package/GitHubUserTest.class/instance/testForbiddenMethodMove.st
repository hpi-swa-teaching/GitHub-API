test forbidden methods
testForbiddenMethodMove

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[self gitHubUser move: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText].
		
	self assert: failed =  'Move not allowed!'