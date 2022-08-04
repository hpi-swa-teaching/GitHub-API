as yet unclassified
testAllowedMethodDeleteWith: aGitHubApiObject

	| running |
	
	running := 'unexpected Error'.
	
	[aGitHubApiObject delete]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'