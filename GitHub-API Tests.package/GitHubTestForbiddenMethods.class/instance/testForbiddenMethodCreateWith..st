as yet unclassified
testForbiddenMethodCreateWith: aGitHubApiObject

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[aGitHubApiObject create: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Create not allowed!'