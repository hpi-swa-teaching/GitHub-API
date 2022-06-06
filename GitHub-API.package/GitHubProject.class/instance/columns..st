methods
columns: aColumnIdentifier

	| column |
	
	column := GitHubColumn new.
	column
		token: self token;
		username: self username;
		projectId: self projectId.
	
	(aColumnIdentifier isKindOf: Number)
		ifTrue: [column columnId: aColumnIdentifier].
	(aColumnIdentifier isKindOf: String)
		ifTrue: [column columnname: aColumnIdentifier].
	
	^ column