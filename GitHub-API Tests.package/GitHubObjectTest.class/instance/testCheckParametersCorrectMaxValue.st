test check parameters
testCheckParametersCorrectMaxValue

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> Integer.
			'maxValue' -> 10.
		}).
	}.
	
	parameters := Dictionary newFrom: {'param' -> 10}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self deny: failed.