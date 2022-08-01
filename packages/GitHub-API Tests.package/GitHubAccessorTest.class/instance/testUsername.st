as yet unclassified
testUsername

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #username andValue: self defaultUsername.