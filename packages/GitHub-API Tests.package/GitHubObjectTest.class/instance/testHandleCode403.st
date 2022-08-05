test response code handling
testHandleCode403

	| response failed |
	
	response := GitHubMockResponse new code: 403.
	
	failed := false.
	
	[self gitHubObject handleResponse: response]
		on: Error do: [failed := true].
	
	self assert: failed