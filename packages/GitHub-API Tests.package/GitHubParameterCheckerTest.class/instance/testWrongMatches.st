accessing
testWrongMatches

	| failed |
		
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {
			'string' -> 'sample3'.
		}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self assert: failed.