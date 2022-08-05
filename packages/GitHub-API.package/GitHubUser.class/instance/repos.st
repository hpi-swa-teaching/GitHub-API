methods
repos

	"returns all repositories"

	| repos |
	
	repos := GitHubRepos new.
	
	repos
		apiUser: self apiUser;
		owner: self username.
		
	^ repos