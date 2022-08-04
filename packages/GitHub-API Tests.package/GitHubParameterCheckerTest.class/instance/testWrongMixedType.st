accessing
testWrongMixedType

	| failed |
		
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {
			'mixed' -> true.
		}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self assert: failed.