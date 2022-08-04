accessing
testCorrectMaxValue

	| failed |
	
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {'integer' -> 10}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self deny: failed.