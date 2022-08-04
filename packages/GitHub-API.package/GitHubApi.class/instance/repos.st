methods
repos

	| repos |
	
	repos := GitHubSearchRepos new.
	repos
		apiUser: self apiUser.
		
	^ repos