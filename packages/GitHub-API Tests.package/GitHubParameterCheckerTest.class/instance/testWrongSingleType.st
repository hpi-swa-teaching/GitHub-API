accessing
testWrongSingleType

	| failed |
		
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {
			'integer' -> 'test'.
		}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self assert: failed.