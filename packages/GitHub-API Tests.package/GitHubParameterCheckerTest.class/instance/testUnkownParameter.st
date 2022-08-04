accessing
testUnkownParameter

	| failed |
	
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {'unknown' -> 0}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self assert: failed.