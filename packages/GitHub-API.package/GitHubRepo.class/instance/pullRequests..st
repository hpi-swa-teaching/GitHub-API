methods
pullRequests: aPullNumber

	"returns a pull requests identified by pull number"

	| pullRequest |
	
	pullRequest := GitHubPullRequest new.
	pullRequest
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		pullNumber: aPullNumber.
		
	^ pullRequest
		