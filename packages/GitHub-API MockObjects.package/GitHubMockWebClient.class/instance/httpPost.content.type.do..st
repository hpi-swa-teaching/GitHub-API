mocked interface
httpPost: urlString content: postData type: contentType do: aBlock
	
	^ GitHubMockResponse new code: self testCode