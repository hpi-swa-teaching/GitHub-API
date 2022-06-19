test check parameters
testCheckParametersWrongMinValue

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> Integer.
			'minValue' -> 10.
		}).
	}.
	
	parameters := Dictionary newFrom: {'param' -> 8}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self assert: failed