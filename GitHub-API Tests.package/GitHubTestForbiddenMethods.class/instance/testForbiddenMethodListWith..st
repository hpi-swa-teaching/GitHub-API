as yet unclassified
testForbiddenMethodListWith: aGitHubApiObject

	| failed |
	
	failed := 'unexpected Error'.
	
	[aGitHubApiObject list]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'List not allowed!'