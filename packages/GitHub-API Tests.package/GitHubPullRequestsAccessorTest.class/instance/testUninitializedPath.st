as yet unclassified
testUninitializedPath

	gitHubObject owner: self defaultOwner;
		reponame: self defaultReponame;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/pulls'.