test forbidden methods for other owner
testForbiddenMethodMoveUnauthorized

	self gitHubRepos owner: 'NotAuthorizedUser'.
	
	GitHubTestForbiddenMethods new testForbiddenMethodMoveWith: self gitHubRepos