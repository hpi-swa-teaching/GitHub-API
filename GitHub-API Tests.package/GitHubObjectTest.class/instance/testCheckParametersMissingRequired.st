test check parameters
testCheckParametersMissingRequired

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> Integer.
			'required' -> true.
		}).
	}.
	
	parameters := Dictionary newFrom: {}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self assert: failed.