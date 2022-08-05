methods
issues: anIssueIdentifier

	"returns a specific issue identified by the issue number or the issue title"

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
		