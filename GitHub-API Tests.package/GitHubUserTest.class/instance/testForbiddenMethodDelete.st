test forbidden methods
testForbiddenMethodDelete

	| failed |
	
	failed := 'unexpected Error'.
	
	[self gitHubUser delete]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Delete not allowed!'