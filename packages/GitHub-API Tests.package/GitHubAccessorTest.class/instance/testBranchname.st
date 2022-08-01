as yet unclassified
testBranchname

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #branchname andValue: self defaultBranchname.