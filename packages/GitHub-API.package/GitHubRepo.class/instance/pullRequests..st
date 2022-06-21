methods
pullRequests: aPullNumber

	| pullRequest |
	
	pullRequest := GitHubPullRequest new.
	pullRequest
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		pullNumber: aPullNumber.
		
	^ pullRequest
		