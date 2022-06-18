test http methods
testForbiddenMethodList

	| failed |

	failed := false.
	[self gitHubObject list]
		on: Error do: [failed := true].
	
	self assert: failed