accessing
testWrongMinValue

	| failed |
	
	self gitHubParameterChecker
		parameters: (Dictionary newFrom: {'integer' -> 0}).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self assert: failed.