test http methods
testForbiddenMethodSearch

	| failed |

	failed := false.
	[self gitHubObject search: (Dictionary newFrom: {})]
		on: Error do: [failed := true].
	
	self assert: failed.