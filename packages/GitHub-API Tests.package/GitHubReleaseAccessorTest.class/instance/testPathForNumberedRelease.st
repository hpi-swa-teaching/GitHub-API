as yet unclassified
testPathForNumberedRelease

	gitHubObject releaseIdentifier: self defaultNumberedReleaseIdentifier;
		owner: self defaultOwner;
		reponame: self defaultReponame;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner,'/', self defaultReponame, '/releases/', self defaultNumberedReleaseIdentifier