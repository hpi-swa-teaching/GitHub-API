test repos
testReposWithRepoName

	| repoName |
	
	repoName := 'testRepo'.
	
	self assert: (self gitHubUser repos: repoName) reponame = repoName