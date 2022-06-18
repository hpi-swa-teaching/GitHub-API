test http methods
testForbiddenMethodCreate

	| failed |

	failed := false.
	[self gitHubObject create: (Dictionary newFrom: {})]
		on: Error do: [failed := true].
	
	self assert: failed