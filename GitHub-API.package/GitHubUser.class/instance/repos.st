methods
repos

	| repos |
	
	repos := GitHubRepos new.
	
	repos
		apiUser: self apiUser;
		owner: self username.
		
	^ repos