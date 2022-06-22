test forbidden methods for other owner
testForbiddenMethodUpdateUnauthorized

	| failed unimportantDictionary |
	
	self gitHubRepos owner: 'NotAuthorizedUser'.
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos update: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed