methods
issues: anIssueIdentifier

	| issue |
	
	issue := GitHubIssue new.
	issue
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	(anIssueIdentifier isKindOf: Number)
		ifTrue: [issue issueNumber:  anIssueIdentifier].
	(anIssueIdentifier isKindOf: String)
		ifTrue: [issue issueNumber: (self getIssueNumberByTitle: anIssueIdentifier)].
		
	^ issue
		