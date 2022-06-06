helper
getProjectId

	| projects project |
	
	projects := GitHubProjects new.
	projects
		token: self token;
		username: self username;
		reponame: self reponame.
	
	projects := projects get.
	
	project := projects detect: [:p | (p at: 'name') = self projectname] ifNone: [].
	project ifNil: [self error: 'Unknown project ' , self projectname , '!'] ifNotNil: [^ (project at: 'id')]