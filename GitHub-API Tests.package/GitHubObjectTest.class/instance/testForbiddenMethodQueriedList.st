test http methods
testForbiddenMethodQueriedList

	| failed |

	failed := false.
	[self gitHubObject move: (Dictionary newFrom: {})]
		on: Error do: [failed := true].
	
	self assert: failed.