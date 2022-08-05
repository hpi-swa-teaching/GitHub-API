mocked interface
httpGet: urlString do: aBlock
	
	^ GitHubMockResponse new code: self testCode