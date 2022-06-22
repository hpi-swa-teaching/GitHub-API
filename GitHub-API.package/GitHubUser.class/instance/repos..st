methods
repos: aRepoName

	| repo |
	
	repo := GitHubRepo new.
	
	repo
		apiUser: self apiUser;
		owner: self username;
		reponame: aRepoName.
		
	^ repo