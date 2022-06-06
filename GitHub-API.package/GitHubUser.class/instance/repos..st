methods
repos: aRepoName

	| repo |
	
	repo := GitHubRepo new.
	
	repo
		token: self token;
		username: self username;
		isAuthorizedUser: self isAuthorizedUser;
		reponame: aRepoName.
		
	^ repo