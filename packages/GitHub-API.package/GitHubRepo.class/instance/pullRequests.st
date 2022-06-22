methods
pullRequests

	| pullRequests |
	
	pullRequests := GitHubPullRequests new.
	pullRequests
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ pullRequests
		