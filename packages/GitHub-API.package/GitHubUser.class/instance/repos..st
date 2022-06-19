methods
repos: aReponame

	| repo |
	
	repo := GitHubRepo new.
	
	repo
		apiUser: self apiUser;
		owner: self username;
		reponame: aReponame.
		
	^ repo