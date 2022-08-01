test helpers
test: aGitHubObject withAccessor: anAccessorSymbol andValue: aTestValue

	aGitHubObject perform: ((anAccessorSymbol, ':') asSymbol) with: aTestValue.
	
	self test: aGitHubObject withGetter: anAccessorSymbol forReturn: aTestValue.