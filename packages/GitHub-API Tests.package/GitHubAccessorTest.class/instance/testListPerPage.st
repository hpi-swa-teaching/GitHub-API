as yet unclassified
testListPerPage

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #listMaxSize andValue: self defaultListPerPage.