test check parameters
testCheckParametersMatchesWrong

	| parameters requirements failed |
	requirements := Dictionary newFrom: {
		'param' -> (Dictionary newFrom: {
			'type' -> String.
			'matches' -> {'public' . 'private' . 'internal'}
		}).
	}.
	
	parameters := Dictionary newFrom: {'param' -> 'test'}.
	failed := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [failed := true].
	
	self assert: failed.