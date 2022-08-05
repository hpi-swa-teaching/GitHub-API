methods
repos

	"returns a searchable repo object"

	| repos |
	
	repos := GitHubSearchRepos new.
	repos
		apiUser: self apiUser.
		
	^ repos