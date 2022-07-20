methods
pulls

	| pulls |
	
	pulls := GitHubPullRequests new.
	pulls
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		commitSHA: self commitSHA.
	
	^ pulls