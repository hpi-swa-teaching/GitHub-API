methods
projects: aProjectIdentifier

	| project |
	
	project := GitHubProject new.
	project
		token: self token;
		username: self username;
		reponame: self reponame.
		
	(aProjectIdentifier isKindOf: Number)
		ifTrue: [project projectId: aProjectIdentifier].
	(aProjectIdentifier isKindOf: String)
		ifTrue: [project projectname: aProjectIdentifier].
		
	^ project
		