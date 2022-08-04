test forbidden methods for other owner
testForbiddenMethodCreateUnauthorized

	self gitHubRepos owner: 'NotAuthorizedUser'.
	
	GitHubTestForbiddenMethods new testForbiddenMethodCreateWith: self gitHubRepos