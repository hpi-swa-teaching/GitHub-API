methods
commits: aCommitSHA

	| commit |
	
	commit := GitHubCommit new.
	commit
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		commitSHA: aCommitSHA.
		
	^ commit
		