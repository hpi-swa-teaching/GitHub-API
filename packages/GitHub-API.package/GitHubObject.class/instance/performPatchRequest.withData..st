http methods
performPatchRequest: aUrl withData: aDataDictionary

	| client response |
	
	client := self webClient.
	
	response := client
		httpPatch: aUrl
		content: (JsonObject newFrom: aDataDictionary) asJsonString
		type: 'application/json'
		do: self setHeader.
	
	^ self handleResponse: response