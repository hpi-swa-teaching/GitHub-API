methods
repos: aReponame

	"returns a specific repository"

	| repo |
	
	repo := GitHubRepo new.
	
	repo
		apiUser: self apiUser;
		owner: self username;
		reponame: aReponame.
		
	^ repo