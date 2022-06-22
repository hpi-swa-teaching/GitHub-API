test forbidden methods
testForbiddenMethodList

	| failed |
	
	failed := 'unexpected Error'.
	
	[self gitHubUser list]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'List not allowed!'