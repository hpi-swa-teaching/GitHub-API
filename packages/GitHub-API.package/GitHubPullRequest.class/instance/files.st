methods
files

	"returns all files"

	| files |
	
	files := GitHubPullRequestFiles new
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		pullNumber: self pullNumber.
	
	^ files