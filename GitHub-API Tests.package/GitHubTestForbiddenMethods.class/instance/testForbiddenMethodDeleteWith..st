as yet unclassified
testForbiddenMethodDeleteWith: aGitHubApiObject

	| failed |
	
	failed := 'unexpected Error'.
	
	[aGitHubApiObject delete]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Delete not allowed!'