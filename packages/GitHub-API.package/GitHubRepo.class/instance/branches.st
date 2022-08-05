methods
branches

	"returns all branches"

	| branches |
	
	branches := GitHubBranches new.
	branches
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ branches
		