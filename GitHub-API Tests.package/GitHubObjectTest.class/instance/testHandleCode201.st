test http methods
testHandleCode201

	| response |
	response := GitHubMockResponse new code: 201.
	
	self assert: (self gitHubObject handleResponse: response)