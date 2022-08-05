as yet unclassified
testAllowedMethodSearchWithObject: aGitHubApiObject andParameters: aSearchParameterDictionary

	| running searchParameters |
	
	searchParameters := aSearchParameterDictionary.
	running := 'unexpected Error'.
	
	[aGitHubApiObject search: searchParameters]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'