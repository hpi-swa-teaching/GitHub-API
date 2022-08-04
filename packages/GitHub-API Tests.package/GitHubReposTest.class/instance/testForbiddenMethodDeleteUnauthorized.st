test forbidden methods for other owner
testForbiddenMethodDeleteUnauthorized

	self gitHubRepos owner: 'NotAuthorizedUser'.
	
	GitHubTestForbiddenMethods new testForbiddenMethodDeleteWith: self gitHubRepos