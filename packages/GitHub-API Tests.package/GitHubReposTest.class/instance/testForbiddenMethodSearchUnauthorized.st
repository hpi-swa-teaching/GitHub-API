test forbidden methods for other owner
testForbiddenMethodSearchUnauthorized

	self gitHubRepos owner: 'NotAuthorizedUser'.
	GitHubTestForbiddenMethods new testForbiddenMethodSearchWith: self gitHubRepos