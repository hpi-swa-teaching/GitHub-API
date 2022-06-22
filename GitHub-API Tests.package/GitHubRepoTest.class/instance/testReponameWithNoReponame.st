test reponame
testReponameWithNoReponame

	| failed |
	
	failed := false.
	[self gitHubRepo reponame]
		on: Error do: [failed := true].
	self assert: failed