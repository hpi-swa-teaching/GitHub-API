helper
getProjectIdByName: aString

	|projects project|
	
	projects := GitHubProjects new.
	projects
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.

	projects := projects list.
	project := projects detect: [:p | (p at: 'name') = aString] ifNone: [].
	project ifNil: [self error: 'Unknown project ' , aString , '!'] ifNotNil: [^ (project at: 'id')]