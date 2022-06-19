http methods
performPostRequest: aUrl withData: aDataDictionary

	| client response |
	client := WebClient new.
	
	response := client
		httpPost: aUrl
		content: (JsonObject newFrom: aDataDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response