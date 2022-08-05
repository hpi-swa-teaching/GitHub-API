as yet unclassified
testAllowedMethodMoveWithObject: aGitHubApiObject andParameters: aMoveParameterDictionary

	| running moveParameters |
	
	moveParameters := aMoveParameterDictionary.
	running := 'unexpected Error'.
	
	[aGitHubApiObject move: moveParameters]
		on: Error do: [ :error | running := error messageText ].
		
	self assert: running = 'This is a TestCase running green!'