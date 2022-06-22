test forbidden methods
testForbiddenMethodGet

	| failed |

	failed := false.
	[self gitHubRepos get]
		on: Error do: [failed := true].
	
	self assert: failed.