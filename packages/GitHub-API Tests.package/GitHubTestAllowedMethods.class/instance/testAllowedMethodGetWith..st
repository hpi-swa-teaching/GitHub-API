as yet unclassified
testAllowedMethodGetWith: aGitHubApiObject

	| running |
	
	running := 'unexpected Error'.
	
	[aGitHubApiObject get]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'