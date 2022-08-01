as yet unclassified
testPath

	gitHubObject path: self defaultPath;
		owner: self defaultOwner;
		reponame: self defaultReponame;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/branches'.