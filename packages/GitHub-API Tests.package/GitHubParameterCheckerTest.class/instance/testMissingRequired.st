accessing
testMissingRequired

	| failed |
	
	(self gitHubParameterChecker requirements)
		at: 'required' put: (Dictionary newFrom: {'type' -> Integer. 'required' -> true}).
		
	self gitHubParameterChecker
		parameters: (Dictionary new).
	
	failed := false.
	
	[self gitHubParameterChecker check]
		on: Error do: [failed := true].
		
	self assert: failed.