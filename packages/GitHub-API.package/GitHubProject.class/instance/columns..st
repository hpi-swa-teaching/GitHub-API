methods
columns: aColumnIdentifier

	"returns a specific column identified by id or name"

	| column |
	
	column := GitHubColumn new.
	column apiUser: self apiUser.
	
	(aColumnIdentifier isKindOf: Number)
		ifTrue: [column columnId: aColumnIdentifier].
	(aColumnIdentifier isKindOf: String)
		ifTrue: [column columnId: (self getColumnIdByName: aColumnIdentifier)].
	
	^ column