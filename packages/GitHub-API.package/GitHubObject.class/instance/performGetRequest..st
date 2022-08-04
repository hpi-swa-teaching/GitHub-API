http methods
performGetRequest: aUrl

	| client response |
	
	client := self webClient.
	
	response := client
		httpGet: aUrl
		do: self setHeader.
	
	^ self handleResponse: response