methods
commits
	
	"returns all commits"

	| commits |
	
	commits := GitHubCommits new.
	commits
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ commits
		