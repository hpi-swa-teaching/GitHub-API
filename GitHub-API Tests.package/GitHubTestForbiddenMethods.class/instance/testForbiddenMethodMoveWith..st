as yet unclassified
testForbiddenMethodMoveWith: aGitHubApiObject

	| failed unimportantDictionary |
	
	unimportantDictionary := Dictionary new.
	failed := 'unexpected Error'.
	
	[aGitHubApiObject move: unimportantDictionary]
		on: Error do: [ :error | failed := error messageText ].
		
	self assert: failed = 'Move not allowed!'