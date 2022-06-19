test check parameters
testCheckParametersUknownParameter

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> Integer.
		}).
	}.
	
	parameters := Dictionary newFrom: {'unknownParam' -> 10}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self assert: failed