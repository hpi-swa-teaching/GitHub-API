accessing
testCorrectMinValue

	| failed |
	
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {'integer' -> 1}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self deny: failed.