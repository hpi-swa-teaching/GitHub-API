mocked interface
httpPut: urlString content: postData type: contentType do: aBlock
	
	^ GitHubMockResponse new code: self testCode