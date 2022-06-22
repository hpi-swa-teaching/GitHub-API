test forbidden methods for other owner
testForbiddenMethodSearchUnauthorized

	| failed unimportantDictionary |
	
	self gitHubRepos owner: 'NotAuthorizedUser'.
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos search: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed