methods
projects: aProjectIdentifier

	| project |
	
	project := GitHubProject new.
	project
		apiUser: self apiUser.
		
	(aProjectIdentifier isKindOf: Number)
		ifTrue: [project projectId: aProjectIdentifier].
	(aProjectIdentifier isKindOf: String)
		ifTrue: [project projectId: (self getProjectIdByName: aProjectIdentifier)].
		
	^ project
		