as yet unclassified
testForbiddenMethodSearchWith: aGitHubApiObject

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[aGitHubApiObject search: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Search not allowed!'