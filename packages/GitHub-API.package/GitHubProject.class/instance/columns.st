methods
columns

	"returns all columns"

	| columns |
	
	columns := GitHubColumns new.
	columns
		apiUser: self apiUser;
		projectId: self projectId.
	
	^ columns