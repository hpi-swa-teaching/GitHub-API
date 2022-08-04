accessing
testCorrectMatches

	| failed |
		
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {
			'string' -> 'sample2'.
		}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self deny: failed.