as yet unclassified
testPath

	gitHubObject path: self defaultPath;
		owner: self defaultOwner;
		reponame: self defaultReponame;
		releaseId: self defaultReleaseId;
		yourself.
	
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/releases/', self defaultReleaseId, '/assets'.