as yet unclassified
testPath
	
	gitHubObject := GitHubBranch new owner: self defaultOwner;
		reponame: self defaultReponame;
		branchname: self defaultBranchname;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame, '/branches/', self defaultBranchname