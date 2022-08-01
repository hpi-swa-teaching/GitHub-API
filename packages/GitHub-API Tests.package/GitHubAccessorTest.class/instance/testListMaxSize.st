as yet unclassified
testListMaxSize

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #listMaxSize andValue: self defaultListMaxSize.