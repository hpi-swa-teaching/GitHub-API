test forbidden methods
testForbiddenMethodDelete

	| failed |
	
	failed := nil.
	
	[self gitHubColumns delete]
		on: Error 
		do: [ :error |
			failed := error messageText ].

	self assert: failed = 'Delete not allowed!'