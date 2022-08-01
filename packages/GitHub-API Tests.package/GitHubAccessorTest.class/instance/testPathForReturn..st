test helpers
testPathForReturn: aPath

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withGetter: #path forReturn: aPath.