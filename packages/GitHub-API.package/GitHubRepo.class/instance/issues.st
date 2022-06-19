methods
issues

	| issues |
	
	issues := GitHubIssues new.
	issues
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ issues
		