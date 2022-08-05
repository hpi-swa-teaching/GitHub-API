methods
branches: aBranchname

	"returns a specific branch"

	| branch |
	
	branch := GitHubBranch new.
	branch
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		branchname: aBranchname.
		
	^ branch
		