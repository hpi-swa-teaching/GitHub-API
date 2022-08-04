test helpers
test: aGitHubObject withGetter: aGetterSymbol forReturn: aTestValue
	
	self assert: ((aGitHubObject perform: aGetterSymbol) = aTestValue)