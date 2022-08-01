as yet unclassified
testPath

	gitHubObject owner: self defaultOwner;
		reponame: self defaultReponame;
		path: self defaultPath;
		commitSHA: self defaultCommitSHA;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/commits/', self defaultCommitSHA, '/pulls'.