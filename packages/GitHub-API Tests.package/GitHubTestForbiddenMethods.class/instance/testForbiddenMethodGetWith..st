as yet unclassified
testForbiddenMethodGetWith: aGitHubApiObject

	| failed |
	
	failed := 'unexpected Error'.
	
	[aGitHubApiObject get]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Get not allowed!'