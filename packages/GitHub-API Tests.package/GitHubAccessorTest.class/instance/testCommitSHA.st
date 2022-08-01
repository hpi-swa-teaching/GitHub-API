as yet unclassified
testCommitSHA

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #commitSHA andValue: self defaultCommitSHA.