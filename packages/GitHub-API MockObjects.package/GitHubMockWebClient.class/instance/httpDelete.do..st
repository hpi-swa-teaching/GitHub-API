mocked interface
httpDelete: urlString do: aBlock
	
	^ GitHubMockResponse new code: self testCode