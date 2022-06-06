methods
repos

	| repos |
	
	repos := GitHubRepos new.
	
	repos
		token: self token;
		username: self username;
		isAuthorizedUser: self isAuthorizedUser.
		
	^ repos