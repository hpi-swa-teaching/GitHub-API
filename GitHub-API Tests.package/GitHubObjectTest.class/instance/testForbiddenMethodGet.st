test http methods
testForbiddenMethodGet

	| failed |

	failed := false.
	[self gitHubObject get]
		on: Error do: [failed := true].
	
	self assert: failed.