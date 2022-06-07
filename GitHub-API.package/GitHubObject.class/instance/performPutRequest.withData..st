http methods
performPutRequest: aUrl withData: aDictionary

	| client response |
	client := WebClient new.
	
	response := client
		httpPut: aUrl
		content: (JsonObject newFrom: aDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response