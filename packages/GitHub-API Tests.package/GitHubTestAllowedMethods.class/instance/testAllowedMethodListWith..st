as yet unclassified
testAllowedMethodListWith: aGitHubApiObject

	| running |
	
	running := 'unexpected Error'.
	
	[aGitHubApiObject list]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'