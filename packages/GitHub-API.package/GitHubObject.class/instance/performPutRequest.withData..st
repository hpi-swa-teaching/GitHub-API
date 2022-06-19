http methods
performPutRequest: aUrl withData: aDataDictionary

	| client response |
	client := WebClient new.
	
	response := client
		httpPut: aUrl
		content: (JsonObject newFrom: aDataDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response