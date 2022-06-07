http methods
performPostRequest: aUrl withData: aDictionary

	| client response |
	client := WebClient new.
	
	response := client
		httpPost: aUrl
		content: (JsonObject newFrom: aDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response