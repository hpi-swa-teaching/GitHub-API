as yet unclassified
testPathForLatestRelease

	gitHubObject releaseIdentifier: 'latest';
		owner: self defaultOwner;
		reponame: self defaultReponame;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner,'/', self defaultReponame, '/releases/latest'.