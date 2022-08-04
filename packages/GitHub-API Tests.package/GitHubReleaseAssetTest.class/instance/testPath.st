as yet unclassified
testPath

	gitHubObject path: self defaultPath;
		owner: self defaultOwner;
		reponame: self defaultReponame;
		assetId: self defaultAssetId;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/releases/assets/', self defaultAssetId