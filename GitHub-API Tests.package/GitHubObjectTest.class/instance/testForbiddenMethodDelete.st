test http methods
testForbiddenMethodDelete

	| failed |

	failed := false.
	[self gitHubObject delete]
		on: Error do: [failed := true].
	
	self assert: failed.