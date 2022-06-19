helper
getColumnIdByName: aColumnname

	| columns column |
	
	columns := GitHubColumns new.
	columns
		apiUser: self apiUser;
		projectId: self projectId.
	
	columns := columns list.
	
	column := columns detect: [:p | (p at: 'name') = aColumnname] ifNone: [].
	column ifNil: [self error: 'Unknown column ' , aColumnname , '!'] ifNotNil: [^ (column at: 'id')]