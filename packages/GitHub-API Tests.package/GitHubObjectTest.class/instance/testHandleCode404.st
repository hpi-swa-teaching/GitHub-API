test response code handling
testHandleCode404

	| response failed |
	
	response := GitHubMockResponse new code: 404.
	
	failed := false.
	
	[self gitHubObject handleResponse: response]
		on: Error do: [failed := true].
	
	self assert: failed