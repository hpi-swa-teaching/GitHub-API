as yet unclassified
testReleaseId

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #releaseId andValue: self defaultReleaseId.