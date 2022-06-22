test Issues
testIssuesWithNoReponame
	
	| failed |
	
	failed := false.
	[self gitHubRepo issues]
		on: Error do: [failed := true].
	self assert: failed