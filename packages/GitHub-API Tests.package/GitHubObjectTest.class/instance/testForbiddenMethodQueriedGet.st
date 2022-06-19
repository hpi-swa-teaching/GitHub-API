test http methods
testForbiddenMethodQueriedGet

	| failed |

	failed := false.
	[self gitHubObject get: (Dictionary newFrom: {})]
		on: Error do: [failed := true].
	
	self assert: failed