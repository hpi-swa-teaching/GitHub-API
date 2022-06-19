test check parameters
testCheckParametersCorrectType

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> Integer.
		}).
	}.
	
	parameters := Dictionary newFrom: {'param' -> 5}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self deny: failed