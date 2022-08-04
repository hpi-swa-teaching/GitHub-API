as yet unclassified
testPath

	gitHubObject owner: self defaultOwner;
		reponame: self defaultReponame;
		pullNumber: self defaultPullNumber;
		yourself.
	
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/pulls/', self defaultPullNumber