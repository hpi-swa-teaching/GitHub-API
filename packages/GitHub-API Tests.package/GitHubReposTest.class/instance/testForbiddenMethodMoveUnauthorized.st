test forbidden methods for other owner
testForbiddenMethodMoveUnauthorized

	| failed unimportantDictionary |
	
	self gitHubRepos owner: 'NotAuthorizedUser'.
	unimportantDictionary := Dictionary new.
	failed := false.
	
	[self gitHubRepos move: unimportantDictionary]
		on: Error do: [failed := true].

	self assert: failed