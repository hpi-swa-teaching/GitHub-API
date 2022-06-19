methods
projects

	| projects |
	
	projects := GitHubProjects new.
	projects
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ projects
		