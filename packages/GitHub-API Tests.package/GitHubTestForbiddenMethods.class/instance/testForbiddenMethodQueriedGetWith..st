as yet unclassified
testForbiddenMethodQueriedGetWith: aGitHubApiObject

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[aGitHubApiObject get: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Queried get not allowed!'