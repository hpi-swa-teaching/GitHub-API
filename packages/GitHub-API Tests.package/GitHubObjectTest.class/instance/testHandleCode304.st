test response code handling
testHandleCode304

	| response failed |
	
	response := GitHubMockResponse new code: 304.
	
	failed := false.
	[self gitHubObject handleResponse: response]
		on: Error do: [failed := true].
	
	self assert: failed