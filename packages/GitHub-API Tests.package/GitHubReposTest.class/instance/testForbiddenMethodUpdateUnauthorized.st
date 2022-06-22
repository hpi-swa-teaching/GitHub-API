test forbidden methods for other owner
testForbiddenMethodUpdateUnauthorized

	self gitHubRepos owner: 'NotAuthorizedUser'.
	GitHubTestForbiddenMethods new testForbiddenMethodUpdateWith: self gitHubRepos