as yet unclassified
testOwner

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #owner andValue: self defaultOwner