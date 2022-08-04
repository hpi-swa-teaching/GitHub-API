http methods
performPatchRequest: aUrl withData: aDataDictionary

	| client response |
	
	client := WebClient new.
	
	response := client
		httpPatch: aUrl
		content: (JsonObject newFrom: aDataDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response