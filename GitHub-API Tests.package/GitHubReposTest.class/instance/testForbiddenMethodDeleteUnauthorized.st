test forbidden methods for other owner
testForbiddenMethodDeleteUnauthorized

	| failed |
	
	self gitHubRepos owner: 'NotAuthorizedUser'.
	failed := false.
	[self gitHubRepos delete]
		on: Error do: [failed := true].
	
	self assert: failed.