helper
getIssueNumberByTitle: aString

	|issues issue|
	
	issues := GitHubIssues new.
	issues
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.

	issues := issues list.
	issue := issues detect: [:p | (p at: 'title') = aString] ifNone: [].
	issue ifNil: [self error: 'Unknown issue ' , aString , '!'] ifNotNil: [^ (issue at: 'number')]