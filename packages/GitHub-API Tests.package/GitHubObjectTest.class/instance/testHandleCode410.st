test http methods
testHandleCode410

	| response failed |
	
	response := GitHubMockResponse new code: 410.
	
	failed := false.
	
	[self gitHubObject handleResponse: response]
		on: Error do: [failed := true].
	
	self assert: failed