http methods
performDeleteRequest: aUrl

	| client response |
	
	client := self webClient.
	
	response := client
		httpDelete: aUrl
		do: self setHeader.

	^ self handleResponse: response