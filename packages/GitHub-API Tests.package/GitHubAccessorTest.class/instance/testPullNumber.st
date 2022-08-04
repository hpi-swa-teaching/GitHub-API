as yet unclassified
testPullNumber

	(gitHubObject isNil) ifTrue: [^ true].

	self test: gitHubObject withAccessor: #pullNumber andValue: self defaultPullNumber