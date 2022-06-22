helper
getIssueNumberByTitle: anIssueTitle

	|issues issue|
	
	issues := GitHubIssues new.
	issues
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.

	issues := issues list.
	issue := issues detect: [:p | (p at: 'title') = anIssueTitle] ifNone: [].
	issue ifNil: [self error: 'Unknown issue ' , anIssueTitle , '!'] ifNotNil: [^ (issue at: 'number')]