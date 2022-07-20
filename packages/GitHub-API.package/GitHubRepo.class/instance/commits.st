methods
commits

	| commits |
	
	commits := GitHubCommits new.
	commits
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ commits
		