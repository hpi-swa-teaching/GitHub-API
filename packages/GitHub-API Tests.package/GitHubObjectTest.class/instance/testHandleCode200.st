test response code handling
testHandleCode200

	| response content expectedResult |
	
	content := '{"key":"val","second_key":10}'.
	
	expectedResult := Dictionary newFrom: {
		'key' -> 'val'.
		'second_key' -> 10
	}.
	
	response := GitHubMockResponse new.
	response
		code: 200;
		content: content.
	
	self assert: ((self gitHubObject handleResponse: response) = expectedResult)