test forbidden methods for other owner
testForbiddenMethodCreateUnauthorized

	| failed unimportantDictionary |
	
	self gitHubRepos owner: 'NotAuthorizedUser'.
	unimportantDictionary := Dictionary new.
	failed := false.
	[self gitHubRepos create: unimportantDictionary]
		on: Error do: [failed := true].
	
	self assert: failed.