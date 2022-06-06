methods
columns

	| columns |
	
	columns := GitHubColumns new.
	columns
		token: self token;
		username: self username;
		projectId: self projectId.
	
	^ columns