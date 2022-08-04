as yet unclassified
testReponame

	(gitHubObject isNil) ifTrue: [^ true].

	self test: gitHubObject withAccessor: #reponame andValue: self defaultReponame