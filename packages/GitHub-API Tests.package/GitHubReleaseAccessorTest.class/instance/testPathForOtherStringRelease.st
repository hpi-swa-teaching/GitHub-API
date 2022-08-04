as yet unclassified
testPathForOtherStringRelease

	gitHubObject releaseIdentifier: self defaultStringReleaseIdentifier;
		owner: self defaultOwner;
		reponame: self defaultReponame;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner,'/', self defaultReponame, '/releases/tags/', self defaultStringReleaseIdentifier