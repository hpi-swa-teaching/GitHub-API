methods
projects

	| projects |
	
	projects := GitHubProjects new.
	projects
		token: self token;
		username: self username;
		reponame: self reponame.
		
	^ projects
		