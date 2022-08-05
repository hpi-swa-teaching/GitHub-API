as yet unclassified
testAllowedMethodCreateWithObject: aGitHubApiObject andParameters: aPostParameterDictionary

	| running postParameters |
	
	postParameters := aPostParameterDictionary.
	running := 'unexpected Error'.
	
	[aGitHubApiObject create: postParameters]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'