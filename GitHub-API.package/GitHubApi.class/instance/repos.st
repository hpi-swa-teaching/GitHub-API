methods
repos

	| repos |
	
	repos := GitHubRepos new.
	
	repos
		apiUser: self apiUser;
		isSearchObject: true.
		
	^ repos