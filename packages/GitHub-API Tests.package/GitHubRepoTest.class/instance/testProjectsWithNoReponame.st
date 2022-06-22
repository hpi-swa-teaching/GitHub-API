test projects
testProjectsWithNoReponame
	
	| failed |
	
	failed := false.
	[self gitHubRepo projects]
		on: Error do: [failed := true].
	self assert: failed