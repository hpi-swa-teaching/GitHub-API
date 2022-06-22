test forbidden methods for owned repo
testForbiddenMethodDelete

	| failed |

	failed := false.
	[self gitHubRepos delete]
		on: Error do: [failed := true].
	
	self assert: failed.