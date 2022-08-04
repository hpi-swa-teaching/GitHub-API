as yet unclassified
testReleaseIdentifier

	(gitHubObject isNil) ifTrue: [^ true].

	self test: gitHubObject withAccessor: #releaseIdentifier andValue: self defaultNumberedReleaseIdentifier