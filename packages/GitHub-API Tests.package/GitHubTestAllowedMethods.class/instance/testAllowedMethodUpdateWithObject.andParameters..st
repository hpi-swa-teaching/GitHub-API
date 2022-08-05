as yet unclassified
testAllowedMethodUpdateWithObject: aGitHubApiObject andParameters: aPatchParameterDictionary

	| running patchParameters |
	
	patchParameters := aPatchParameterDictionary.
	running := 'unexpected Error'.
	
	[aGitHubApiObject update: patchParameters]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'