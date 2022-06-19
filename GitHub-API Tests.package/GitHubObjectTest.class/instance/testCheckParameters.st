test check parameters
testCheckParameters

	| parameters requirements shouldFail |
	requirements := Dictionary newFrom: {
		'testParam' -> (Dictionary newFrom: {
			'type' -> Integer.
			'required' -> true.
		}).
	}.
	
	"test missing required parameter"
	parameters := Dictionary newFrom: {}.
	shouldFail := false.
	[self gitHubObject checkParameters: parameters forRequirements: requirements]
		on: Error do: [shouldFail := true].
	
	self assert: shouldFail