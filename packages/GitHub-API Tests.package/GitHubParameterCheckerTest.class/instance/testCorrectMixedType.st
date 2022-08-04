accessing
testCorrectMixedType

	| failed |
		
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {
			'mixed' -> 'sample2'.
		}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self deny: failed.