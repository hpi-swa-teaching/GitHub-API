test http methods
testHandleCode422

	| response failed |
	response := GitHubMockResponse new code: 422.
	
	failed := false.
	[self gitHubObject handleResponse: response]
		on: Error do: [failed := true].
	
	self assert: failed