test response code handling
testHandleCode204

	| response |
	
	response := GitHubMockResponse new code: 204.
	
	self assert: (self gitHubObject handleResponse: response)