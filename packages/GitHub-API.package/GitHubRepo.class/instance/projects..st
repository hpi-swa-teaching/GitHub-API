methods
projects: aProjectIdentifier

	"returns a specific project identified by project id or project name"

	| project |
	
	project := GitHubProject new.
	project
		apiUser: self apiUser.
		
	(aProjectIdentifier isKindOf: Number)
		ifTrue: [project projectId: aProjectIdentifier].
	(aProjectIdentifier isKindOf: String)
		ifTrue: [project projectId: (self getProjectIdByName: aProjectIdentifier)].
		
	^ project
		