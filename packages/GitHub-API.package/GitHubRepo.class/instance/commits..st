methods
commits: aCommitSHA

	"returns a specific commit identified by sha"

	| commit |
	
	commit := GitHubCommit new.
	commit
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		commitSHA: aCommitSHA.
		
	^ commit
		