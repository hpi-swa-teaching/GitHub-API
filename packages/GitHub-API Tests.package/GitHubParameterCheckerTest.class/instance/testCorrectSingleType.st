accessing
testCorrectSingleType

	| failed |
		
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {
			'integer' -> 5.
		}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self deny: failed.