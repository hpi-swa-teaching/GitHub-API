test check parameters
testCheckParametersWrongType

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> Integer.
		}).
	}.
	
	parameters := Dictionary newFrom: {'param' -> 'Test'}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self assert: failed.