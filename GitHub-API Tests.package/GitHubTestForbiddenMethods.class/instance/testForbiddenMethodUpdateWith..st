as yet unclassified
testForbiddenMethodUpdateWith: aGitHubApiObject

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[aGitHubApiObject update: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Update not allowed!'