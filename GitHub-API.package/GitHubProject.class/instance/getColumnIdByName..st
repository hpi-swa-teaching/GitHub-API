helper
getColumnIdByName: aString

	| columns column |
	
	columns := GitHubColumns new.
	columns
		apiUser: self apiUser;
		projectId: self projectId.
	
	columns := columns list.
	
	column := columns detect: [:p | (p at: 'name') = aString] ifNone: [].
	column ifNil: [self error: 'Unknown column ' , aString , '!'] ifNotNil: [^ (column at: 'id')]