helper
getProjectIdByName: aProjectname

	|projects project|
	
	projects := GitHubProjects new.
	projects
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.

	projects := projects list.
	project := projects detect: [:p | (p at: 'name') = aProjectname] ifNone: [].
	project ifNil: [self error: 'Unknown project ' , aProjectname , '!'] ifNotNil: [^ (project at: 'id')]