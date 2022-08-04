as yet unclassified
testAllowedMethodQueriedGetWithObject: aGitHubApiObject andParameters: aQueryParameterDictionary

	| running queryParameters |
	
	queryParameters := aQueryParameterDictionary.
	running := 'unexpected Error'.
	
	[aGitHubApiObject get: queryParameters]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'