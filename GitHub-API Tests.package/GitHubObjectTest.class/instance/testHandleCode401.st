test http methods
testHandleCode401

	| response failed |
	response := GitHubMockResponse new code: 401.
	
	failed := false.
	[self gitHubObject handleResponse: response]
		on: Error do: [failed := true].
	
	self assert: failed.