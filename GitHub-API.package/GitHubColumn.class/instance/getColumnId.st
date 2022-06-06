helper
getColumnId

	| columns column |
	
	columns := GitHubColumns new.
	columns
		token: self token;
		projectId: self projectId.
	
	columns := columns get.
	
	column := columns detect: [:p | (p at: 'name') = self columnname] ifNone: [].
	column ifNil: [self error: 'Unknown column ' , self columnname , '!'] ifNotNil: [^ (column at: 'id')]