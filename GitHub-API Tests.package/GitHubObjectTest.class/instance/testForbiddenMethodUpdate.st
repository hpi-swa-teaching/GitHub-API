test http methods
testForbiddenMethodUpdate

	| failed |

	failed := false.
	[self gitHubObject update: (Dictionary newFrom: {})]
		on: Error do: [failed := true].
	
	self assert: failed